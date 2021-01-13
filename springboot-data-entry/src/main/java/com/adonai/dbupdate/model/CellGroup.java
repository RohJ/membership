package com.adonai.dbupdate.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "cellgroup")
public class CellGroup {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long cell_id;
	
	@Column(unique = true)
	private String name;
	
	private String area;
	
	// Cascade?
	@OneToMany(mappedBy = "nearbycellgroup")
	private List<Person> people;

	public Long getCell_id() {
		return cell_id;
	}

	public void setCell_id(Long cell_id) {
		this.cell_id = cell_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}
	
}
