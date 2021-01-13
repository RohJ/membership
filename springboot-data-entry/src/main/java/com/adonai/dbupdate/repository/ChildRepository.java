package com.adonai.dbupdate.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.adonai.dbupdate.model.Child;

public interface ChildRepository extends JpaRepository<Child, Long> {

}
