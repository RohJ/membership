package com.adonai.dbupdate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Service;

import com.adonai.dbupdate.model.CellGroup;
import com.adonai.dbupdate.repository.CellGroupRepository;

@Service
public class CellGroupServiceImpl implements CellGroupService {

	@Autowired
    private CellGroupRepository cellGroupRepository;

	@Override
	@Cacheable("cellgroups")
	public List<CellGroup> findAll() {
		return cellGroupRepository.findAll();
	}
	
	@Override
	@Caching(evict = {
			@CacheEvict(value="cellgroups", allEntries=true)
	})
	public void save(CellGroup cellgroup) {
		cellGroupRepository.save(cellgroup);
	}
}
