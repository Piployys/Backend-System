package com.mfu.entity;
import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import javax.persistence.ManyToOne;

@Entity

public class SiblingInformation implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long siblingInfo_Id;
	private String siblingInfo_Fname,siblingInfo_Lname,siblingInfo_Career,siblingInfo_EduLevel;
	private int siblingInfo_Age,siblingInfo_Year;
	private double siblingInfo_Salary;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private RegisterScholarship register_Scholarship;
	
	public long getSiblingInfo_Id() {
		return siblingInfo_Id;
	}
	public void setSiblingInfo_Id(long siblingInfo_Id) {
		this.siblingInfo_Id = siblingInfo_Id;
	}
	public String getSiblingInfo_Fname() {
		return siblingInfo_Fname;
	}
	public void setSiblingInfo_Fname(String siblingInfo_Fname) {
		this.siblingInfo_Fname = siblingInfo_Fname;
	}
	public String getSiblingInfo_Lname() {
		return siblingInfo_Lname;
	}
	public void setSiblingInfo_Lname(String siblingInfo_Lname) {
		this.siblingInfo_Lname = siblingInfo_Lname;
	}
	public String getSiblingInfo_Career() {
		return siblingInfo_Career;
	}
	public void setSiblingInfo_Career(String siblingInfo_Career) {
		this.siblingInfo_Career = siblingInfo_Career;
	}
	public String getSiblingInfo_EduLevel() {
		return siblingInfo_EduLevel;
	}
	public void setSiblingInfo_EduLevel(String siblingInfo_EduLevel) {
		this.siblingInfo_EduLevel = siblingInfo_EduLevel;
	}
	public int getSiblingInfo_Age() {
		return siblingInfo_Age;
	}
	public void setSiblingInfo_Age(int siblingInfo_Age) {
		this.siblingInfo_Age = siblingInfo_Age;
	}
	public int getSiblingInfo_Year() {
		return siblingInfo_Year;
	}
	public void setSiblingInfo_Year(int siblingInfo_Year) {
		this.siblingInfo_Year = siblingInfo_Year;
	}
	public double getSiblingInfo_Salary() {
		return siblingInfo_Salary;
	}
	public void setSiblingInfo_Salary(double siblingInfo_Salary) {
		this.siblingInfo_Salary = siblingInfo_Salary;
	}
	
	
}
