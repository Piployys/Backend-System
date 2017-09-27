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
public class ScholarshipHistory implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long HistorySch_Id;
	private String HistorySch_Type, HistorySch_Name;
	private int HistorySch_ReceiveYear, HistorySch_ToYear, HistorySch_Semester;
	private double HistorySch_Amount;

	@ManyToOne(fetch = FetchType.EAGER)
	private RegisterScholarship register_Scholarship;

	public long getHistorySch_Id() {
		return HistorySch_Id;
	}

	public void setHistorySch_Id(long historySch_Id) {
		HistorySch_Id = historySch_Id;
	}

	public String getHistorySch_Type() {
		return HistorySch_Type;
	}

	public void setHistorySch_Type(String historySch_Type) {
		HistorySch_Type = historySch_Type;
	}

	public String getHistorySch_Name() {
		return HistorySch_Name;
	}

	public void setHistorySch_Name(String historySch_Name) {
		HistorySch_Name = historySch_Name;
	}

	public int getHistorySch_ReceiveYear() {
		return HistorySch_ReceiveYear;
	}

	public void setHistorySch_ReceiveYear(int historySch_ReceiveYear) {
		HistorySch_ReceiveYear = historySch_ReceiveYear;
	}

	public int getHistorySch_ToYear() {
		return HistorySch_ToYear;
	}

	public void setHistorySch_ToYear(int historySch_ToYear) {
		HistorySch_ToYear = historySch_ToYear;
	}

	public int getHistorySch_Semester() {
		return HistorySch_Semester;
	}

	public void setHistorySch_Semester(int historySch_Semester) {
		HistorySch_Semester = historySch_Semester;
	}

	public double getHistorySch_Amount() {
		return HistorySch_Amount;
	}

	public void setHistorySch_Amount(double historySch_Amount) {
		HistorySch_Amount = historySch_Amount;
	}

}
