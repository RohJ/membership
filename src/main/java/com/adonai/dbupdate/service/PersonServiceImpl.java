package com.adonai.dbupdate.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adonai.dbupdate.model.Person;
import com.adonai.dbupdate.repository.PersonRepository;

@Service
public class PersonServiceImpl implements PersonService {

	@Autowired
    private PersonRepository personRepository;

	@Override
	public void save(Person person) {
		personRepository.save(person);
	}
}
