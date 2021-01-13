package com.adonai.dbupdate.entity;

import com.adonai.dbupdate.model.Person;

public class PeopleForm {

	private Person person;
	private Person spouse;
	
	private boolean spousedetailspresent;
	private boolean kidspresent;
	
	private String address;
	private String area;
	private int pincode;
	
	public PeopleForm() {
	}
	
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	public Person getSpouse() {
		return spouse;
	}
	public void setSpouse(Person spouse) {
		this.spouse = spouse;
	}
	public boolean isSpousedetailspresent() {
		return spousedetailspresent;
	}
	public void setSpousedetailspresent(boolean spousedetailspresent) {
		this.spousedetailspresent = spousedetailspresent;
	}
	public boolean isKidspresent() {
		return kidspresent;
	}

	public void setKidspresent(boolean kidspresent) {
		this.kidspresent = kidspresent;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
}
