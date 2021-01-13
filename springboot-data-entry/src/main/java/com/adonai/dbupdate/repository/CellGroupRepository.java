package com.adonai.dbupdate.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.adonai.dbupdate.model.CellGroup;

public interface CellGroupRepository extends JpaRepository<CellGroup, Long> {

	List<CellGroup> findAll();
}
