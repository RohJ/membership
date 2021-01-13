package com.adonai.dbupdate.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "child",
	uniqueConstraints = @UniqueConstraint(columnNames={"firstname", "father_id", "mother_id"}))
public class Child {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long child_id;
	
	@NotNull
	private String firstName;
	
	@NotNull
	private String lastName;
	
	// TODO: Uncomment the NotNull annotation once Child is implemented fully.
	// Currently commented for testing sake
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	//@NotNull
	private Date dob;
	
	@NotNull
	private String gender;
	
	@ManyToOne
	@JoinColumn(name="father_id")
	private Person father;
	
	@ManyToOne
	@JoinColumn(name="mother_id")
	private Person mother;

	public Long getChild_id() {
		return child_id;
	}

	public void setChild_id(Long child_id) {
		this.child_id = child_id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Person getFather() {
		return father;
	}

	public void setFather(Person father) {
		this.father = father;
	}

	public Person getMother() {
		return mother;
	}

	public void setMother(Person mother) {
		this.mother = mother;
	}
}
