package com.mfu;

import java.util.List;

import com.mfu.entity.OfficerInformation;

public interface OfficerInformationService {

	void save(OfficerInformation OfficerInfo);

	void update(OfficerInformation OfficerInfo);

	void delete(long OfficerId);

	OfficerInformation findOfficerInformationById(long OfficerId);

	List<OfficerInformation> getAllOfficerInformation();

}
