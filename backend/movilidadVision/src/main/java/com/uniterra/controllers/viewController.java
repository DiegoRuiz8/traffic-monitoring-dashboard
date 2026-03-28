package com.uniterra.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.uniterra.model.view;
import com.uniterra.repository.viewRepository;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/views")
public class viewController {

    @Autowired
    private viewRepository viewRepository;

    // Obtener todos los registros
    @GetMapping
    public List<view> getAllViews() {
        return viewRepository.findAll();
    }

    // Obtener un registro por su ID
    @GetMapping("/{id}")
    public Optional<view> getViewById(@PathVariable int id) {
        return viewRepository.findById(id);
    }

    // Crear un nuevo registro
    @PostMapping
    public view createView(@RequestBody view newView) {
        return viewRepository.save(newView);
    }

    // Actualizar un registro
    @PutMapping("/{id}")
    public view updateView(@PathVariable int id, @RequestBody view updatedView) {
        updatedView.setView_id(id);  // Establecer el ID para la actualización
        return viewRepository.save(updatedView);
    }

    // Eliminar un registro
    @DeleteMapping("/{id}")
    public void deleteView(@PathVariable int id) {
        viewRepository.deleteById(id);
    }
}
