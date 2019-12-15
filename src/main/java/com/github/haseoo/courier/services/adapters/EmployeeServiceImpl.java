package com.github.haseoo.courier.services.adapters;

import com.github.haseoo.courier.exceptions.serviceexceptions.userexceptions.employees.EmployeeNotFoundException;
import com.github.haseoo.courier.repositories.ports.EmployeeRepository;
import com.github.haseoo.courier.servicedata.users.employees.EmployeeData;
import com.github.haseoo.courier.services.ports.EmployeeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
public class EmployeeServiceImpl implements EmployeeService {
    private final EmployeeRepository employeeRepository;

    @Override
    public List<EmployeeData> getList() {
        return employeeRepository
                .getList()
                .stream()
                .map(EmployeeData::of)
                .collect(Collectors.toList());
    }

    @Override
    public EmployeeData getById(Long id) {
        return EmployeeData.of(employeeRepository.getById(id).orElseThrow(() -> new EmployeeNotFoundException(id)));
    }
}