package com.adonai.dbupdate.model;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "person",
	uniqueConstraints = @UniqueConstraint(columnNames={"firstname", "dob"}))
public class Person {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long person_id;

	@NotNull
	private String firstname;

	@NotNull
	private String lastname;

	// TODO: Restricted list?
	@NotNull
	private String profession;

	@NotNull
	private String gender;

	// Can be single, married, widow, single parent
	@NotNull
	private String maritalstatus;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@NotNull
	private Date dob;

	// Can be Yes or No
	@NotNull
	private String waterbaptized;

	@NotNull
	private String mobilenumber;

	@NotNull
	private String email;

	// TODO: Cascade Type??
	@ManyToOne
	@JoinColumn(name = "cell_id")
	private CellGroup nearbycellgroup;

	// Can be Yes or No
	private String encountercompleted;

	// Can be Yes or No
	private String shdcompleted;

	// Can be Yes or No
	private String pmtcompleted;

	// Can be Yes or No
	private String abscompleted;

	@ManyToMany
	@JoinTable(
			name = "person_ministry",
			joinColumns = @JoinColumn(name = "person_id"),
			inverseJoinColumns = @JoinColumn(name = "ministry_id"))
	Set<Ministry> ministries;
	
	@OneToOne(cascade = {CascadeType.PERSIST})
	@JoinColumn(name = "spouse_id", referencedColumnName = "person_id")
	private Person spouse;
	
	// Cascade?
	@OneToMany(mappedBy = "father", cascade = {CascadeType.PERSIST})
	private List<Child> fatherkids;
	
	@OneToMany(mappedBy = "mother", cascade = {CascadeType.PERSIST})
	private List<Child> motherkids;

	private String presentAddress;
	
	private String area;
	
	private int pincode;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@NotNull
	private Date date;
	
	@PrePersist
	private void onCreate() {
		date = new Date();
	}
	
	public Long getPerson_id() {
		return person_id;
	}

	public void setPerson_id(Long person_id) {
		this.person_id = person_id;
	}

	public Set<Ministry> getMinistries() {
		return ministries;
	}

	public void setMinistries(Set<Ministry> ministries) {
		this.ministries = ministries;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMaritalstatus() {
		return maritalstatus;
	}

	public void setMaritalstatus(String maritalstatus) {
		this.maritalstatus = maritalstatus;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getWaterbaptized() {
		return waterbaptized;
	}

	public void setWaterbaptized(String waterbaptized) {
		this.waterbaptized = waterbaptized;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public CellGroup getNearbycellgroup() { 
		return nearbycellgroup; 
	}

	public void setNearbycellgroup(CellGroup nearbycellgroup) { 
		this.nearbycellgroup = nearbycellgroup; 
	}

	public String getEncountercompleted() {
		return encountercompleted;
	}

	public void setEncountercompleted(String encountercompleted) {
		this.encountercompleted = encountercompleted;
	}

	public String getShdcompleted() {
		return shdcompleted;
	}

	public void setShdcompleted(String shdcompleted) {
		this.shdcompleted = shdcompleted;
	}

	public String getPmtcompleted() {
		return pmtcompleted;
	}

	public void setPmtcompleted(String pmtcompleted) {
		this.pmtcompleted = pmtcompleted;
	}

	public String getAbscompleted() {
		return abscompleted;
	}

	public void setAbscompleted(String abscompleted) {
		this.abscompleted = abscompleted;
	}

	public Person getSpouse() {
		return spouse;
	}

	public void setSpouse(Person spouse) {
		this.spouse = spouse;
	}

	public List<Child> getFatherkids() {
		return fatherkids;
	}

	public void setFatherkids(List<Child> fatherkids) {
		this.fatherkids = fatherkids;
	}

	public List<Child> getMotherkids() {
		return motherkids;
	}

	public void setMotherkids(List<Child> motherkids) {
		this.motherkids = motherkids;
	}

	public String getPresentAddress() {
		return presentAddress;
	}

	public String getArea() {
		return area;
	}

	public int getPincode() {
		return pincode;
	}

	public Date getDate() {
		return date;
	}

	public void setPresentAddress(String presentAddress) {
		this.presentAddress = presentAddress;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
