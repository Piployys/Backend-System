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
public class RegisterScholarship implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long registerSch_Id;
	private int student_Age, student_Level, student_HouNo, student_vilNo, student_Alley;
	private float student_Gpax;
	private long student_Postcode, student_TelephoneNo, student_MobileNo;
	private String student_Nationality, student_Ethnicity, student_Religion, student_Advisor, student_Lane,
			student_Road, student_subDist, student_Dist, student_Province, student_AddressType, student_Dormitory,
			student_Reason;

	@OneToMany(mappedBy="register_Scholarship" , cascade = CascadeType.ALL)
	private List<ParentInformation> parent_Information;
	
	@OneToMany(mappedBy="register_Scholarship" , cascade = CascadeType.ALL)
	private List<SiblingInformation> sibling_Information;
	
	@OneToMany(mappedBy="enroll" , cascade = CascadeType.ALL)
	private List<AnnounceScholarshipInfo> AnnounceSch;
	
	@OneToMany(mappedBy="register_Scholarship" , cascade = CascadeType.ALL)
	private List<ScholarshipHistory> scholarship_History;
		
	@ManyToOne(fetch = FetchType.EAGER)
	private RegisterMember register_Member;
	
	public long getRegisterSch_Id() {
		return registerSch_Id;
	}

	public void setRegisterSch_Id(long registerSch_Id) {
		this.registerSch_Id = registerSch_Id;
	}

	public int getStudent_Age() {
		return student_Age;
	}

	public void setStudent_Age(int student_Age) {
		this.student_Age = student_Age;
	}

	public int getStudent_Level() {
		return student_Level;
	}

	public void setStudent_Level(int student_Level) {
		this.student_Level = student_Level;
	}

	public int getStudent_HouNo() {
		return student_HouNo;
	}

	public void setStudent_HouNo(int student_HouNo) {
		this.student_HouNo = student_HouNo;
	}

	public int getStudent_vilNo() {
		return student_vilNo;
	}

	public void setStudent_vilNo(int student_vilNo) {
		this.student_vilNo = student_vilNo;
	}

	public int getStudent_Alley() {
		return student_Alley;
	}

	public void setStudent_Alley(int student_Alley) {
		this.student_Alley = student_Alley;
	}

	public float getStudent_Gpax() {
		return student_Gpax;
	}

	public void setStudent_Gpax(float student_Gpax) {
		this.student_Gpax = student_Gpax;
	}

	public long getStudent_Postcode() {
		return student_Postcode;
	}

	public void setStudent_Postcode(long student_Postcode) {
		this.student_Postcode = student_Postcode;
	}

	public String getStudent_Nationality() {
		return student_Nationality;
	}

	public void setStudent_Nationality(String student_Nationality) {
		this.student_Nationality = student_Nationality;
	}

	public String getStudent_Ethnicity() {
		return student_Ethnicity;
	}

	public void setStudent_Ethnicity(String student_Ethnicity) {
		this.student_Ethnicity = student_Ethnicity;
	}

	public String getStudent_Religion() {
		return student_Religion;
	}

	public void setStudent_Religion(String student_Religion) {
		this.student_Religion = student_Religion;
	}

	public String getStudent_Advisor() {
		return student_Advisor;
	}

	public void setStudent_Advisor(String student_Advisor) {
		this.student_Advisor = student_Advisor;
	}

	public String getStudent_Lane() {
		return student_Lane;
	}

	public void setStudent_Lane(String student_Lane) {
		this.student_Lane = student_Lane;
	}

	public String getStudent_Road() {
		return student_Road;
	}

	public void setStudent_Road(String student_Road) {
		this.student_Road = student_Road;
	}

	public String getStudent_subDist() {
		return student_subDist;
	}

	public void setStudent_subDist(String student_subDist) {
		this.student_subDist = student_subDist;
	}

	public String getStudent_Dist() {
		return student_Dist;
	}

	public void setStudent_Dist(String student_Dist) {
		this.student_Dist = student_Dist;
	}

	public String getStudent_Province() {
		return student_Province;
	}

	public void setStudent_Province(String student_Province) {
		this.student_Province = student_Province;
	}

	public String getStudent_AddressType() {
		return student_AddressType;
	}

	public void setStudent_AddressType(String student_AddressType) {
		this.student_AddressType = student_AddressType;
	}

	public String getStudent_Dormitory() {
		return student_Dormitory;
	}

	public void setStudent_Dormitory(String student_Dormitory) {
		this.student_Dormitory = student_Dormitory;
	}

	public RegisterMember getRegister_Member() {
		return register_Member;
	}

	public void setRegister_Member(RegisterMember register_Member) {
		this.register_Member = register_Member;
	}

	public long getStudent_TelephoneNo() {
		return student_TelephoneNo;
	}

	public void setStudent_TelephoneNo(long student_TelephoneNo) {
		this.student_TelephoneNo = student_TelephoneNo;
	}

	public long getStudent_MobileNo() {
		return student_MobileNo;
	}

	public void setStudent_MobileNo(long student_MobileNo) {
		this.student_MobileNo = student_MobileNo;
		
	}

	public String getStudent_Reason() {
		return student_Reason;
	}

	public void setStudent_Reason(String student_Reason) {
		this.student_Reason = student_Reason;
	}

	public List<ParentInformation> getParent_Information() {
		return parent_Information;
	}

	public void setParent_Information(List<ParentInformation> parent_Information) {
		this.parent_Information = parent_Information;
	}

	public List<SiblingInformation> getSibling_Information() {
		return sibling_Information;
	}

	public void setSibling_Information(List<SiblingInformation> sibling_Information) {
		this.sibling_Information = sibling_Information;
	}

	public List<AnnounceScholarshipInfo> getAnnounceSch() {
		return AnnounceSch;
	}

	public void setAnnounceSch(List<AnnounceScholarshipInfo> announceSch) {
		AnnounceSch = announceSch;
	}

	public List<ScholarshipHistory> getScholarship_History() {
		return scholarship_History;
	}

	public void setScholarship_History(List<ScholarshipHistory> scholarship_History) {
		this.scholarship_History = scholarship_History;
	}
	

}