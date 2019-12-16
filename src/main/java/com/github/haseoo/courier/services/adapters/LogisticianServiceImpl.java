package com.github.haseoo.courier.services.adapters;

import com.github.haseoo.courier.enums.EmployeeType;
import com.github.haseoo.courier.exceptions.serviceexceptions.userexceptions.employees.ActiveCourierExistsException;
import com.github.haseoo.courier.exceptions.serviceexceptions.userexceptions.employees.ActiveLogisticianExistsException;
import com.github.haseoo.courier.exceptions.serviceexceptions.userexceptions.employees.EmployeeNotFoundException;
import com.github.haseoo.courier.models.CourierModel;
import com.github.haseoo.courier.models.LogisticianModel;
import com.github.haseoo.courier.repositories.ports.EmployeeRepository;
import com.github.haseoo.courier.repositories.ports.LogisticianRepository;
import com.github.haseoo.courier.servicedata.users.employees.EmployeeAddOperationData;
import com.github.haseoo.courier.servicedata.users.employees.EmployeeEditOperationData;
import com.github.haseoo.courier.servicedata.users.employees.LogisticianData;
import com.github.haseoo.courier.services.ports.LogisticianService;
import com.github.haseoo.courier.services.ports.UserService;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.function.Consumer;
import java.util.stream.Collectors;

import static com.github.haseoo.courier.enums.EmployeeType.LOGISTICIAN;
import static com.github.haseoo.courier.utilities.UserUtils.validatePesel;
import static com.github.haseoo.courier.utilities.Utils.copyNonNullProperties;

@Service
@RequiredArgsConstructor
public class LogisticianServiceImpl implements LogisticianService {
    private final EmployeeRepository employeeRepository;
    private final LogisticianRepository logisticianRepository;
    private final UserService userService;
    private final ModelMapper modelMapper;

    @Override
    public List<LogisticianData> getList() {
        return logisticianRepository
                .getList()
                .stream()
                .map(logisticianModel -> modelMapper.map(logisticianModel, LogisticianData.class))
                .collect(Collectors.toList());
    }

    @Override
    public void consumeAllById(List<Long> ids, Consumer<List<LogisticianModel>> consumer) {
        consumer.accept(ids
                .stream()
                .map(id -> logisticianRepository.getById(id).orElseThrow(() -> new EmployeeNotFoundException(id, LOGISTICIAN)))
                .collect(Collectors.toList())
        );
    }

    @Override
    public LogisticianData add(EmployeeAddOperationData addOperationData) {
        validatePesel(addOperationData.getPesel());
        validatePeselExistence(addOperationData.getPesel());
        userService.checkUsername(addOperationData.getUserName());
        return modelMapper.map(logisticianRepository
                        .saveAndFlush(modelMapper.map(addOperationData,
                                LogisticianModel.class)),
                LogisticianData.class);
    }

    @Override
    public LogisticianData getById(Long id) {
        return modelMapper.map(logisticianRepository
                        .getById(id)
                        .orElseThrow(() -> new EmployeeNotFoundException(id, LOGISTICIAN)),
                LogisticianData.class);
    }

    @Override
    @Transactional
    public LogisticianData edit(Long id, EmployeeEditOperationData editOperationData) {
        LogisticianModel logisticianModel = logisticianRepository.getById(id).orElseThrow(() -> new EmployeeNotFoundException(id, LOGISTICIAN));
        if (peselChanged(editOperationData, logisticianModel)) {
            validatePeselExistence(editOperationData.getPesel());
        }
        copyNonNullProperties(modelMapper.map(editOperationData, CourierModel.class), logisticianModel);
        return modelMapper.map(logisticianRepository.saveAndFlush(logisticianModel), LogisticianData.class);
    }

    private void validatePeselExistence(String pesel) {
        if (employeeRepository.findActiveByPesel(pesel)
                .stream()
                .anyMatch(employeeModel -> employeeModel instanceof LogisticianModel)) {
            throw new ActiveCourierExistsException();
        }
    }

    private boolean peselChanged(EmployeeEditOperationData operationData, LogisticianModel logisticianModel) {
        return operationData.getPesel() != null && !operationData.getPesel().equals(logisticianModel.getPesel());
    }
}
