package com.adonai.dbupdate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Service;

import com.adonai.dbupdate.model.Ministry;
import com.adonai.dbupdate.repository.MinistryRepository;

@Service
public class MinistryServiceImpl implements MinistryService {
	
	@Autowired
	private MinistryRepository ministryRepository;
	
	@Override
	@Cacheable("ministeries")
	public List<Ministry> findAll() {
		return ministryRepository.findAll();
	}
	
	@Override
	@Caching(evict = {
			@CacheEvict(value="ministeries", allEntries=true)
	})
	public void save(Ministry ministry) {
		ministryRepository.save(ministry);
	}

}
