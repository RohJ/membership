package com.adonai.dbupdate.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.adonai.dbupdate.model.Ministry;

public interface MinistryRepository extends JpaRepository<Ministry, Long> {

	List<Ministry> findAll();
}
