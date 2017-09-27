package com.mfu;

import java.util.List;

import com.mfu.entity.AnnounceScholarshipInfo;

public interface AnnounceScholarshipInfoService {

	void save(AnnounceScholarshipInfo anc);

	void update(AnnounceScholarshipInfo anc);

	void delete(long announceSchInfo_Id);

	AnnounceScholarshipInfo findAnnounceScholarshipInfoById(long id);

	List<AnnounceScholarshipInfo> getAnnounceScholarshipInfo();

	List<AnnounceScholarshipInfo> findAnnounceScholarshipInfoByScholarshipId(long id);
	List<AnnounceScholarshipInfo> findAnnounceScholarshipInfoByRegId(long id);

	

}
