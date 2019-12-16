package com.github.haseoo.courier.controllers;

import com.github.haseoo.courier.commandsdata.places.MagazineAddCommandData;
import com.github.haseoo.courier.commandsdata.places.MagazineAddLogisiticiansCommandData;
import com.github.haseoo.courier.commandsdata.places.MagazineEditCommandData;
import com.github.haseoo.courier.servicedata.places.MagazineAddOperationData;
import com.github.haseoo.courier.servicedata.places.MagazineEditOperationData;
import com.github.haseoo.courier.services.ports.MagazineService;
import com.github.haseoo.courier.views.places.MagazineView;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/magazine")
@RequiredArgsConstructor
public class MagazineController {
    private final MagazineService magazineService;

    @GetMapping
    public List<MagazineView> getList() {
        return magazineService.getList().stream().map(MagazineView::of).collect(Collectors.toList());
    }

    @GetMapping("/{id}")
    public MagazineView getById(@PathVariable Long id) {
        return MagazineView.of(magazineService.getById(id));
    }

    @PutMapping
    public MagazineView add(@RequestBody MagazineAddCommandData commandData) {
        return MagazineView.of(magazineService.add(MagazineAddOperationData.of(commandData)));
    }

    @PostMapping("/{id}")
    public MagazineView edit(@PathVariable Long id, @RequestBody MagazineEditCommandData commandData) {
        return MagazineView.of(magazineService.edit(id, MagazineEditOperationData.of(commandData)));
    }

    @PostMapping("/{id}/logisticians")
    public MagazineView addLogisiticians(@PathVariable Long id, @RequestBody MagazineAddLogisiticiansCommandData logisiticiansCommandData) {
        return MagazineView.of(magazineService.addLogisitcians(id, logisiticiansCommandData.getLogisiticiansIds()));
    }
}