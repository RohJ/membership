package com.adonai.dbupdate.service;

import java.util.List;

import com.adonai.dbupdate.model.CellGroup;

public interface CellGroupService {

	void save(CellGroup cellGroup);
	
	List<CellGroup> findAll();
}
