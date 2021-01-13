package com.adonai.dbupdate.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "ministry")
public class Ministry {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long ministry_id;
	
	private String ministryname;

	@ManyToMany(mappedBy = "ministries")
	Set<Person> people;
	
	public Long getMinistryid() {
		return ministry_id;
	}

	public void setMinistryid(Long ministryid) {
		this.ministry_id = ministryid;
	}

	public String getMinistryname() {
		return ministryname;
	}

	public void setMinistryname(String ministryname) {
		this.ministryname = ministryname;
	}
}
