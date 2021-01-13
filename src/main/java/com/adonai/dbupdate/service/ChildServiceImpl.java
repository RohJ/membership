package com.adonai.dbupdate.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adonai.dbupdate.model.Child;
import com.adonai.dbupdate.repository.ChildRepository;

@Service
public class ChildServiceImpl implements ChildService {

	@Autowired
    private ChildRepository childRepository;
	
	@Override
	public void save(Child child) {
		childRepository.save(child);
	}

}
