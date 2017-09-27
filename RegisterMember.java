package com.mfu.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.codehaus.jackson.annotate.JsonIgnore;

@Entity
public class RegisterMember implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private long RegisterId;
	private String Student_Title, Student_Fname, Student_Lname, Student_School, Student_Major, Student_Email,
			Student_Password, Student_ConfirmPass, month_Birth;
	private long Citizen_Id, Student_Id;
	private int date_Birth, year_Birth;
	
	@OneToMany(mappedBy="register_Member" , cascade = CascadeType.ALL)
	private List<RegisterScholarship> register_Scholarship;
	
	public long getRegisterId() {
		return RegisterId;
	}
	public void setRegisterId(long registerId) {
		RegisterId = registerId;
	}
	public String getStudent_Title() {
		return Student_Title;
	}
	public void setStudent_Title(String student_Title) {
		Student_Title = student_Title;
	}
	public String getStudent_Fname() {
		return Student_Fname;
	}
	public void setStudent_Fname(String student_Fname) {
		Student_Fname = student_Fname;
	}
	public String getStudent_Lname() {
		return Student_Lname;
	}
	public void setStudent_Lname(String student_Lname) {
		Student_Lname = student_Lname;
	}
	public String getStudent_School() {
		return Student_School;
	}
	public void setStudent_School(String student_School) {
		Student_School = student_School;
	}
	public String getStudent_Major() {
		return Student_Major;
	}
	public void setStudent_Major(String student_Major) {
		Student_Major = student_Major;
	}
	public String getStudent_Email() {
		return Student_Email;
	}
	public void setStudent_Email(String student_Email) {
		Student_Email = student_Email;
	}
	public String getStudent_Password() {
		return Student_Password;
	}
	public void setStudent_Password(String student_Password) {
		Student_Password = student_Password;
	}
	public String getStudent_ConfirmPass() {
		return Student_ConfirmPass;
	}
	public void setStudent_ConfirmPass(String student_ConfirmPass) {
		Student_ConfirmPass = student_ConfirmPass;
	}
	public String getMonth_Birth() {
		return month_Birth;
	}
	public void setMonth_Birth(String month_Birth) {
		this.month_Birth = month_Birth;
	}
	public long getCitizen_Id() {
		return Citizen_Id;
	}
	public void setCitizen_Id(long citizen_Id) {
		Citizen_Id = citizen_Id;
	}
	public long getStudent_Id() {
		return Student_Id;
	}
	public void setStudent_Id(long student_Id) {
		Student_Id = student_Id;
	}
	public int getDate_Birth() {
		return date_Birth;
	}
	public void setDate_Birth(int date_Birth) {
		this.date_Birth = date_Birth;
	}
	public int getYear_Birth() {
		return year_Birth;
	}
	public void setYear_Birth(int year_Birth) {
		this.year_Birth = year_Birth;
	}
	public List<RegisterScholarship> getRegister_Scholarship() {
		return register_Scholarship;
	}
	public void setRegister_Scholarship(List<RegisterScholarship> register_Scholarship) {
		this.register_Scholarship = register_Scholarship;
	}

		
}
