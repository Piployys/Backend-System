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
public class ScholarshipInformation implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long scholarshipInfo_Id;
	private String scholarshipInfo_Name, scholarshipInfo_Company, scholarshipInfo_DateRecord, scholarshipInfo_Type,
			scholarshipInfo_Status, scholarshipInfo_Note;
	private int scholarshipInfo_Year;

	@OneToMany(mappedBy = "announce", cascade = { CascadeType.ALL })
	private List<AnnounceScholarshipInfo> announceSch;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private OfficerInformation record;

	public long getScholarshipInfo_Id() {
		return scholarshipInfo_Id;
	}

	public void setScholarshipInfo_Id(long scholarshipInfo_Id) {
		this.scholarshipInfo_Id = scholarshipInfo_Id;
	}

	public String getScholarshipInfo_Name() {
		return scholarshipInfo_Name;
	}

	public void setScholarshipInfo_Name(String scholarshipInfo_Name) {
		this.scholarshipInfo_Name = scholarshipInfo_Name;
	}

	public String getScholarshipInfo_Company() {
		return scholarshipInfo_Company;
	}

	public void setScholarshipInfo_Company(String scholarshipInfo_Company) {
		this.scholarshipInfo_Company = scholarshipInfo_Company;
	}

	public String getScholarshipInfo_DateRecord() {
		return scholarshipInfo_DateRecord;
	}

	public void setScholarshipInfo_DateRecord(String scholarshipInfo_DateRecord) {
		this.scholarshipInfo_DateRecord = scholarshipInfo_DateRecord;
	}

	public String getScholarshipInfo_Type() {
		return scholarshipInfo_Type;
	}

	public void setScholarshipInfo_Type(String scholarshipInfo_Type) {
		this.scholarshipInfo_Type = scholarshipInfo_Type;
	}

	public String getScholarshipInfo_Status() {
		return scholarshipInfo_Status;
	}

	public void setScholarshipInfo_Status(String scholarshipInfo_Status) {
		this.scholarshipInfo_Status = scholarshipInfo_Status;
	}

	public String getScholarshipInfo_Note() {
		return scholarshipInfo_Note;
	}

	public void setScholarshipInfo_Note(String scholarshipInfo_Note) {
		this.scholarshipInfo_Note = scholarshipInfo_Note;
	}

	public int getScholarshipInfo_Year() {
		return scholarshipInfo_Year;
	}

	public void setScholarshipInfo_Year(int scholarshipInfo_Year) {
		this.scholarshipInfo_Year = scholarshipInfo_Year;
	}

	public List<AnnounceScholarshipInfo> getAnnounceSch() {
		return announceSch;
	}

	public void setAnnounceSch(List<AnnounceScholarshipInfo> announceSch) {
		this.announceSch = announceSch;
	}

	public OfficerInformation getRecord() {
		return record;
	}

	public void setRecord(OfficerInformation record) {
		this.record = record;
	}
	

}