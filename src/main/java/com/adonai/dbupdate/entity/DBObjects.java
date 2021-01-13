package com.adonai.dbupdate.entity;

import java.util.Arrays;
import java.util.List;

public class DBObjects {

	public static String RoleUser = "ROLE_USER";
	public static String RoleAdmin = "ROLE_ADMIN";
	
	private static List<String> maritalStatusValues = Arrays.asList(new String[] 
			{MaritalStatus.SINGLE, MaritalStatus.MARRIED, MaritalStatus.WIDOW, MaritalStatus.SINGLE_PARENT}); 
	
	private static List<String> genderValues = Arrays.asList(new String[]
			{GenderValues.MALE, GenderValues.FEMALE});

	public static List<String> getMaritalStatusValues() {
		return maritalStatusValues;
	}

	public static void setMaritalStatusValues(List<String> maritalStatusValues) {
		DBObjects.maritalStatusValues = maritalStatusValues;
	}

	public static List<String> getGenderValues() {
		return genderValues;
	}

	public static void setGenderValues(List<String> genderValues) {
		DBObjects.genderValues = genderValues;
	}

	public static class MaritalStatus {
		public static String SINGLE = "Single";
		public static String MARRIED = "Married";
		public static String WIDOW = "Widow";
		public static String SINGLE_PARENT = "Single Parent";
	}
	
	public static class GenderValues {
		public static String MALE = "Male";
		public static String FEMALE = "Female";
	}
	
}
