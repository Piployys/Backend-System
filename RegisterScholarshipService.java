package com.mfu;

import java.util.List;

import com.mfu.entity.RegisterScholarship;

public interface RegisterScholarshipService {

	void save(RegisterScholarship reg_sch);

	void update(RegisterScholarship reg_sch);

	void delete(long registerSch_Id);

	RegisterScholarship findRegisterScholarshipById(long registerSch_Id);

	List<RegisterScholarship> getAllRegisterScholarship();

	


}
