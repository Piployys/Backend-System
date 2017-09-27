package com.mfu;

import java.util.List;

import com.mfu.entity.ScholarshipInformation;

public interface ScholarshipInformationService {

	void save(ScholarshipInformation sch);

	void update(ScholarshipInformation sch);

	void delete(long id);

	ScholarshipInformation findScholarshipById(long id);

	List<ScholarshipInformation> getScholarships();

	List<ScholarshipInformation> findScholarshipByOffId(long id);

	


	


}