package com.adonai.dbupdate.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.adonai.dbupdate.model.Person;
import com.adonai.dbupdate.service.PersonService;

@Component
public class PersonValidator implements Validator {

	@Autowired
    private PersonService personService;
	

    @Override
    public boolean supports(Class<?> aClass) {
    	return Person.class.equals(aClass);
    }


	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
	}
}
