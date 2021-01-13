package com.adonai.dbupdate.web;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adonai.dbupdate.entity.DBObjects;
import com.adonai.dbupdate.entity.PeopleForm;
import com.adonai.dbupdate.model.CellGroup;
import com.adonai.dbupdate.model.Child;
import com.adonai.dbupdate.model.Ministry;
import com.adonai.dbupdate.model.Person;
import com.adonai.dbupdate.service.CellGroupService;
import com.adonai.dbupdate.service.MinistryService;
import com.adonai.dbupdate.service.PersonService;
import com.adonai.dbupdate.validator.PersonValidator;

@Controller
@RequestMapping("people")
public class PeopleController {

	@Autowired
	private PersonService personService;

	@Autowired
	private PersonValidator personValidator;

	@Autowired
	private MinistryService ministryService;

	@Autowired
	private CellGroupService cellGroupService;

	@GetMapping("/add")
	public String addPerson(Model model) {

		model.addAttribute("peopleForm", new PeopleForm());

		return "people";
	}

	@PostMapping("/add")
	public String addPerson(@ModelAttribute("peopleForm") PeopleForm peopleForm, BindingResult bindingResult) {

		Person person = peopleForm.getPerson();
		Person spouse = peopleForm.getSpouse();

		System.out.println("Person Name: " + person.getFirstname());

		if(peopleForm.isSpousedetailspresent()) {
			updateSpousalInfo(person, spouse);
			// TODO: To be implemented
			personValidator.validate(spouse, bindingResult);
		}

		if(peopleForm.isKidspresent()) {
			// TODO: Send kids details too
			updateChildrenDetails(person, spouse, peopleForm.isSpousedetailspresent());
		}
		
		updateCommonInfo(person, spouse, peopleForm);

		if (bindingResult.hasErrors()) {
			return "peopleForm";
		}

		// TODO: To be implemented
		personValidator.validate(person, bindingResult);
		
		// TODO: Add Child validator
		
		personService.save(person);

		return "people-confirmation";
	}

	private void updateCommonInfo(Person person, Person spouse, PeopleForm peopleForm) {
		
		person.setPresentAddress(peopleForm.getAddress());
		person.setArea(peopleForm.getArea());
		person.setPincode(peopleForm.getPincode());
		
		if(peopleForm.isSpousedetailspresent()) {
			spouse.setPresentAddress(peopleForm.getAddress());
			spouse.setArea(peopleForm.getArea());
			spouse.setPincode(peopleForm.getPincode());
		}
	}

	private void updateSpousalInfo(Person person, Person spouse) {
		System.out.println("Spouse Name: " + spouse.getFirstname());

		// Update Marital Status and Gender for Spouse
		spouse.setMaritalstatus(DBObjects.MaritalStatus.MARRIED);
		if(person.getGender().equalsIgnoreCase(DBObjects.GenderValues.MALE)) {
			spouse.setGender(DBObjects.GenderValues.FEMALE);
		} else {
			spouse.setGender(DBObjects.GenderValues.MALE);
		}

		spouse.setSpouse(person);
		person.setSpouse(spouse);
	}

	private void updateChildrenDetails(Person person, Person spouse, boolean isSpousePresent) {

		// To be taken from the form object eventually
		Child ch1 = new Child();
		ch1.setFirstName("FirstName1"); ch1.setLastName("LastName1"); ch1.setGender(DBObjects.GenderValues.MALE);

		Child ch2 = new Child();
		ch2.setFirstName("FirstName2"); ch2.setLastName("LastName2"); ch2.setGender(DBObjects.GenderValues.FEMALE);

		if(person.getGender().equalsIgnoreCase(DBObjects.GenderValues.MALE)) {
			ch1.setFather(person);
			ch2.setFather(person);
			person.setFatherkids(new ArrayList<>(Arrays.asList(ch1, ch2)));

			if(isSpousePresent) {
				ch1.setMother(spouse); ch2.setMother(spouse);
				spouse.setMotherkids(new ArrayList<>(Arrays.asList(ch1, ch2)));
			}
		} else {
			ch1.setMother(person);
			ch2.setMother(person);
			person.setMotherkids(new ArrayList<>(Arrays.asList(ch1, ch2)));

			if(isSpousePresent) {
				ch1.setFather(spouse); ch2.setFather(spouse);
				spouse.setFatherkids(new ArrayList<>(Arrays.asList(ch1, ch2)));
			}
		}
	}

	@ModelAttribute("ministries")
	public List<Ministry> getRoleList() {
		return ministryService.findAll();
	}

	@ModelAttribute("cellgroups")
	public List<CellGroup> getCellGroups() {
		return cellGroupService.findAll();
	}

	@ModelAttribute("maritalstatus")
	public List<String> getMaritalStatusValues() {
		return DBObjects.getMaritalStatusValues();
	}

	@ModelAttribute("gender")
	public List<String> getGenderValues() {
		return DBObjects.getGenderValues();
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
}
