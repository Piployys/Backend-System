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
public class ParentInformation implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long parentInfo_Id;
	private String parentInfo_Title, parentInfo_Fname, parentInfo_Lname, parentInfo_CitizenId, parentInfo_Type,
			parentInfo_Career, parentInfo_Position, parentInfo_Email, parentInfo_statusFam, parentInfo_Lane,
			parentInfo_Road, parentInfo_SubDist, parentInfo_Dist, parentInfo_Province, parentInfo_AddressType;
	private int parentInfo_Age, parentInfo_HouNo, parentInfo_VilNo, parentInfo_Alley;
	private double parentInfo_TypeSalary;
	private long parentInfo_Postcode, parentInfo_TelephoneNo, parentInfo_TelephoneNo2, parentInfo_MobileNo,
			parentInfo_Fax;

	@ManyToOne(fetch = FetchType.EAGER)
	private RegisterScholarship register_Scholarship;
	
	public long getParentInfo_Id() {
		return parentInfo_Id;
	}

	public void setParentInfo_Id(long parentInfo_Id) {
		this.parentInfo_Id = parentInfo_Id;
	}

	public String getParentInfo_Title() {
		return parentInfo_Title;
	}

	public void setParentInfo_Title(String parentInfo_Title) {
		this.parentInfo_Title = parentInfo_Title;
	}

	public String getParentInfo_Fname() {
		return parentInfo_Fname;
	}

	public void setParentInfo_Fname(String parentInfo_Fname) {
		this.parentInfo_Fname = parentInfo_Fname;
	}

	public String getParentInfo_Lname() {
		return parentInfo_Lname;
	}

	public void setParentInfo_Lname(String parentInfo_Lname) {
		this.parentInfo_Lname = parentInfo_Lname;
	}

	public String getParentInfo_CitizenId() {
		return parentInfo_CitizenId;
	}

	public void setParentInfo_CitizenId(String parentInfo_CitizenId) {
		this.parentInfo_CitizenId = parentInfo_CitizenId;
	}

	public String getParentInfo_Type() {
		return parentInfo_Type;
	}

	public void setParentInfo_Type(String parentInfo_Type) {
		this.parentInfo_Type = parentInfo_Type;
	}

	public String getParentInfo_Career() {
		return parentInfo_Career;
	}

	public void setParentInfo_Career(String parentInfo_Career) {
		this.parentInfo_Career = parentInfo_Career;
	}

	public String getParentInfo_Position() {
		return parentInfo_Position;
	}

	public void setParentInfo_Position(String parentInfo_Position) {
		this.parentInfo_Position = parentInfo_Position;
	}

	public String getParentInfo_Email() {
		return parentInfo_Email;
	}

	public void setParentInfo_Email(String parentInfo_Email) {
		this.parentInfo_Email = parentInfo_Email;
	}

	public String getParentInfo_statusFam() {
		return parentInfo_statusFam;
	}

	public void setParentInfo_statusFam(String parentInfo_statusFam) {
		this.parentInfo_statusFam = parentInfo_statusFam;
	}

	public String getParentInfo_Lane() {
		return parentInfo_Lane;
	}

	public void setParentInfo_Lane(String parentInfo_Lane) {
		this.parentInfo_Lane = parentInfo_Lane;
	}

	public String getParentInfo_Road() {
		return parentInfo_Road;
	}

	public void setParentInfo_Road(String parentInfo_Road) {
		this.parentInfo_Road = parentInfo_Road;
	}

	public String getParentInfo_SubDist() {
		return parentInfo_SubDist;
	}

	public void setParentInfo_SubDist(String parentInfo_SubDist) {
		this.parentInfo_SubDist = parentInfo_SubDist;
	}

	public String getParentInfo_Dist() {
		return parentInfo_Dist;
	}

	public void setParentInfo_Dist(String parentInfo_Dist) {
		this.parentInfo_Dist = parentInfo_Dist;
	}

	public String getParentInfo_Province() {
		return parentInfo_Province;
	}

	public void setParentInfo_Province(String parentInfo_Province) {
		this.parentInfo_Province = parentInfo_Province;
	}

	public String getParentInfo_AddressType() {
		return parentInfo_AddressType;
	}

	public void setParentInfo_AddressType(String parentInfo_AddressType) {
		this.parentInfo_AddressType = parentInfo_AddressType;
	}

	public int getParentInfo_Age() {
		return parentInfo_Age;
	}

	public void setParentInfo_Age(int parentInfo_Age) {
		this.parentInfo_Age = parentInfo_Age;
	}

	public int getParentInfo_HouNo() {
		return parentInfo_HouNo;
	}

	public void setParentInfo_HouNo(int parentInfo_HouNo) {
		this.parentInfo_HouNo = parentInfo_HouNo;
	}

	public int getParentInfo_VilNo() {
		return parentInfo_VilNo;
	}

	public void setParentInfo_VilNo(int parentInfo_VilNo) {
		this.parentInfo_VilNo = parentInfo_VilNo;
	}

	public int getParentInfo_Alley() {
		return parentInfo_Alley;
	}

	public void setParentInfo_Alley(int parentInfo_Alley) {
		this.parentInfo_Alley = parentInfo_Alley;
	}

	public double getParentInfo_TypeSalary() {
		return parentInfo_TypeSalary;
	}

	public void setParentInfo_TypeSalary(double parentInfo_TypeSalary) {
		this.parentInfo_TypeSalary = parentInfo_TypeSalary;
	}

	public long getParentInfo_Postcode() {
		return parentInfo_Postcode;
	}

	public void setParentInfo_Postcode(long parentInfo_Postcode) {
		this.parentInfo_Postcode = parentInfo_Postcode;
	}

	public long getParentInfo_TelephoneNo() {
		return parentInfo_TelephoneNo;
	}

	public void setParentInfo_TelephoneNo(long parentInfo_TelephoneNo) {
		this.parentInfo_TelephoneNo = parentInfo_TelephoneNo;
	}

	public long getParentInfo_MobileNo() {
		return parentInfo_MobileNo;
	}

	public void setParentInfo_MobileNo(long parentInfo_MobileNo) {
		this.parentInfo_MobileNo = parentInfo_MobileNo;
	}

	public long getParentInfo_Fax() {
		return parentInfo_Fax;
	}

	public void setParentInfo_Fax(long parentInfo_Fax) {
		this.parentInfo_Fax = parentInfo_Fax;
	}

	public long getParentInfo_TelephoneNo2() {
		return parentInfo_TelephoneNo2;
	}

	public void setParentInfo_TelephoneNo2(long parentInfo_TelephoneNo2) {
		this.parentInfo_TelephoneNo2 = parentInfo_TelephoneNo2;
	}
}