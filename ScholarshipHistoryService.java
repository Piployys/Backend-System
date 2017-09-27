package com.mfu;

import java.util.List;

import com.mfu.entity.ScholarshipHistory;

public interface ScholarshipHistoryService {

	void save(ScholarshipHistory SchHistory);

	void update(ScholarshipHistory SchHistory);

	void delete(long HistorySch_Id);

	ScholarshipHistory findScholarshipHistoryById(long HistorySch_Id);

	List<ScholarshipHistory> findScholarshipHistoryByRegisterSchId(long id);

}
