package com.mfu;

import java.util.List;

import com.mfu.entity.ParentInformation;

public interface ParentInformationService {

	void save(ParentInformation parentInfo);

	void update(ParentInformation parentInfo);

	void delete(long parentInfo_Id);

	ParentInformation findParentInformationById(long parentInfo_Id);

	List<ParentInformation> findParentInformationByRegisterSchId(long id);

}
