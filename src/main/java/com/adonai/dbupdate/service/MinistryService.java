package com.adonai.dbupdate.service;

import java.util.List;

import com.adonai.dbupdate.model.Ministry;

public interface MinistryService {

	void save(Ministry ministry);
	
	List<Ministry> findAll();
}
