package com.mfu;

import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.mfu.entity.*;
import com.mfu.*;

@Stateless
@Remote(ScholarshipHistoryService.class)
public class ScholarshipHistoryServiceBean implements ScholarshipHistoryService {

	@PersistenceContext(unitName = "employeeDatabase")
	EntityManager em;

	@Override
	public void save(ScholarshipHistory SchHistory) {
		em.persist(SchHistory);
	}

	@Override
	public void update(ScholarshipHistory SchHistory) {
		em.merge(SchHistory);
	}

	@Override
	public void delete(long HistorySch_Id) {
		ScholarshipHistory SchHistory = findScholarshipHistoryById(HistorySch_Id);
		if (SchHistory != null) {
			em.remove(SchHistory);
		}
	}

	@Override
	public ScholarshipHistory findScholarshipHistoryById(long HistorySch_Id) {
		return em.find(ScholarshipHistory.class, HistorySch_Id);
	}

	@Override
	public List<ScholarshipHistory> findScholarshipHistoryByRegisterSchId(long id) {
		List<ScholarshipHistory> list = em
				.createQuery(
						"SELECT SchHistory FROM ScholarshipHistory SchHistory WHERE SchHistory.register_Scholarship.id=:param1")
				.setParameter("param1", id).getResultList();
		return list;
	}

}