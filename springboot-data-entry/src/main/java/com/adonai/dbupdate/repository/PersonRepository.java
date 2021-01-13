package com.adonai.dbupdate.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.adonai.dbupdate.model.Person;

public interface PersonRepository extends JpaRepository<Person, Long> {

}
