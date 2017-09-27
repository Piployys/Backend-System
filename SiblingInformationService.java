package com.mfu;

import java.util.List;

import com.mfu.entity.SiblingInformation;

public interface SiblingInformationService {

	void save(SiblingInformation SiblingInfo);

	void update(SiblingInformation SiblingInfo);

	void delete(long siblingInfo_Id);

	SiblingInformation findSiblingInformationById(long siblingInfo_Id);

	List<SiblingInformation> findSiblingInformationByRegisterSchId(long id);

}
