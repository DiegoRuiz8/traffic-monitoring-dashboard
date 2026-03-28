package com.uniterra.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.uniterra.model.view;
import com.uniterra.repository.viewRepository;

import java.util.List;
import java.util.Optional;

@Service
public class viewService {

    @Autowired
    private viewRepository viewRepository;

    // Método para guardar o actualizar un "view"
    public view guardarView(view v) {
        return viewRepository.save(v);
    }

    // Método para obtener todos los "views"
    public List<view> obtenerTodosLosViews() {
        return viewRepository.findAll();
    }

    // Método para obtener un "view" por su ID
    public Optional<view> obtenerViewPorId(int id) {
        return viewRepository.findById(id);
    }

    // Método para eliminar un "view" por su ID
    public void eliminarView(int id) {
        viewRepository.deleteById(id);
    }
}
