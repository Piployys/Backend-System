package com.mfu.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class OfficerInformation implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long OfficerId;
	private String offFname, offLname, offEmail, offPass,offPosition,offWorkplace;

	@OneToMany(mappedBy = "record", cascade = { CascadeType.ALL })
	private List<ScholarshipInformation> scholarships;

	public long getOfficerId() {
		return OfficerId;
	}

	public void setOfficerId(long officerId) {
		OfficerId = officerId;
	}

	public String getOffFname() {
		return offFname;
	}

	public void setOffFname(String offFname) {
		this.offFname = offFname;
	}

	public String getOffLname() {
		return offLname;
	}

	public void setOffLname(String offLname) {
		this.offLname = offLname;
	}

	public String getOffEmail() {
		return offEmail;
	}

	public void setOffEmail(String offEmail) {
		this.offEmail = offEmail;
	}

	public String getOffPass() {
		return offPass;
	}

	public void setOffPass(String offPass) {
		this.offPass = offPass;
	}

	public String getOffPosition() {
		return offPosition;
	}

	public void setOffPosition(String offPosition) {
		this.offPosition = offPosition;
	}

	public String getOffWorkplace() {
		return offWorkplace;
	}

	public void setOffWorkplace(String offWorkplace) {
		this.offWorkplace = offWorkplace;
	}

	public List<ScholarshipInformation> getScholarships() {
		return scholarships;
	}

	public void setScholarships(List<ScholarshipInformation> scholarships) {
		this.scholarships = scholarships;
	}
	
	

	
}