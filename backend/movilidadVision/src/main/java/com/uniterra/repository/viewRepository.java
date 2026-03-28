package com.uniterra.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.uniterra.model.view;
@Repository
public interface viewRepository extends JpaRepository<view, Integer>{

}
