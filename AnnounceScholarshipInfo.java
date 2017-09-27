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
import javax.persistence.OneToMany;

@Entity
public class AnnounceScholarshipInfo implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long announceSchInfo_Id;
	private String announceSchInfo_Faculty, announceSchInfo_Major, announceSchInfo_Condition, announceSchInfo_DatePost,
			announceSchInfo_DatePostClose, announceSchInfo_DateRegister, announceSchInfo_DateExpire,
			announceSchInfo_Name, announceSchInfo_Company, announceSchInfo_Type, announceSchInfo_Note;
	private double announceSchInfo_Amount;
	private int announceSchInfo_Year, announceSchInfo_Semester;
	private float announceSchInfo_Gpax;

	@ManyToOne(fetch = FetchType.EAGER)
	private ScholarshipInformation announce;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private RegisterScholarship enroll;

	public long getAnnounceSchInfo_Id() {
		return announceSchInfo_Id;
	}

	public void setAnnounceSchInfo_Id(long announceSchInfo_Id) {
		this.announceSchInfo_Id = announceSchInfo_Id;
	}

	public String getAnnounceSchInfo_Faculty() {
		return announceSchInfo_Faculty;
	}

	public void setAnnounceSchInfo_Faculty(String announceSchInfo_Faculty) {
		this.announceSchInfo_Faculty = announceSchInfo_Faculty;
	}

	public String getAnnounceSchInfo_Major() {
		return announceSchInfo_Major;
	}

	public void setAnnounceSchInfo_Major(String announceSchInfo_Major) {
		this.announceSchInfo_Major = announceSchInfo_Major;
	}

	public String getAnnounceSchInfo_Condition() {
		return announceSchInfo_Condition;
	}

	public void setAnnounceSchInfo_Condition(String announceSchInfo_Condition) {
		this.announceSchInfo_Condition = announceSchInfo_Condition;
	}

	public String getAnnounceSchInfo_DatePost() {
		return announceSchInfo_DatePost;
	}

	public void setAnnounceSchInfo_DatePost(String announceSchInfo_DatePost) {
		this.announceSchInfo_DatePost = announceSchInfo_DatePost;
	}

	public String getAnnounceSchInfo_DatePostClose() {
		return announceSchInfo_DatePostClose;
	}

	public void setAnnounceSchInfo_DatePostClose(String announceSchInfo_DatePostClose) {
		this.announceSchInfo_DatePostClose = announceSchInfo_DatePostClose;
	}

	public String getAnnounceSchInfo_DateRegister() {
		return announceSchInfo_DateRegister;
	}

	public void setAnnounceSchInfo_DateRegister(String announceSchInfo_DateRegister) {
		this.announceSchInfo_DateRegister = announceSchInfo_DateRegister;
	}

	public String getAnnounceSchInfo_DateExpire() {
		return announceSchInfo_DateExpire;
	}

	public void setAnnounceSchInfo_DateExpire(String announceSchInfo_DateExpire) {
		this.announceSchInfo_DateExpire = announceSchInfo_DateExpire;
	}

	public String getAnnounceSchInfo_Name() {
		return announceSchInfo_Name;
	}

	public void setAnnounceSchInfo_Name(String announceSchInfo_Name) {
		this.announceSchInfo_Name = announceSchInfo_Name;
	}

	public String getAnnounceSchInfo_Company() {
		return announceSchInfo_Company;
	}

	public void setAnnounceSchInfo_Company(String announceSchInfo_Company) {
		this.announceSchInfo_Company = announceSchInfo_Company;
	}

	public String getAnnounceSchInfo_Type() {
		return announceSchInfo_Type;
	}

	public void setAnnounceSchInfo_Type(String announceSchInfo_Type) {
		this.announceSchInfo_Type = announceSchInfo_Type;
	}

	public String getAnnounceSchInfo_Note() {
		return announceSchInfo_Note;
	}

	public void setAnnounceSchInfo_Note(String announceSchInfo_Note) {
		this.announceSchInfo_Note = announceSchInfo_Note;
	}

	public double getAnnounceSchInfo_Amount() {
		return announceSchInfo_Amount;
	}

	public void setAnnounceSchInfo_Amount(double announceSchInfo_Amount) {
		this.announceSchInfo_Amount = announceSchInfo_Amount;
	}

	public int getAnnounceSchInfo_Year() {
		return announceSchInfo_Year;
	}

	public void setAnnounceSchInfo_Year(int announceSchInfo_Year) {
		this.announceSchInfo_Year = announceSchInfo_Year;
	}

	public int getAnnounceSchInfo_Semester() {
		return announceSchInfo_Semester;
	}

	public void setAnnounceSchInfo_Semester(int announceSchInfo_Semester) {
		this.announceSchInfo_Semester = announceSchInfo_Semester;
	}

	public float getAnnounceSchInfo_Gpax() {
		return announceSchInfo_Gpax;
	}

	public void setAnnounceSchInfo_Gpax(float announceSchInfo_Gpax) {
		this.announceSchInfo_Gpax = announceSchInfo_Gpax;
	}

	public ScholarshipInformation getAnnounce() {
		return announce;
	}

	public void setAnnounce(ScholarshipInformation announce) {
		this.announce = announce;
	}

	public RegisterScholarship getEnroll() {
		return enroll;
	}

	public void setEnroll(RegisterScholarship enroll) {
		this.enroll = enroll;
	}

	
	
}