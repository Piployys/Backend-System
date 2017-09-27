package com.mfu;

import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.mfu.entity.*;
import com.mfu.*;

@Stateless
@Remote(ScholarshipInformationService.class)
public class ScholarshipInformationServiceBean implements ScholarshipInformationService {

	@PersistenceContext(unitName = "employeeDatabase")
	EntityManager em;

	@Override
	public void save(ScholarshipInformation sch) {
		em.persist(sch);
	}

	@Override
	public void update(ScholarshipInformation sch) {
		em.merge(sch);
	}

	@Override
	public void delete(long id) {
		ScholarshipInformation sch = findScholarshipById(id);
		if (sch != null) {
			em.remove(sch);
		}
	}

	@Override
	public ScholarshipInformation findScholarshipById(long id) {
		return em.find(ScholarshipInformation.class, id);
	}

	@Override
	public List<ScholarshipInformation> getScholarships() {
		return em.createQuery("SELECT sch FROM ScholarshipInformation sch").getResultList();
	}
	@Override
	public List<ScholarshipInformation> findScholarshipByOffId(long id) {
		List<ScholarshipInformation> list = em
				.createQuery("SELECT list FROM ScholarshipInformation list WHERE list.record.id=:param1")
				.setParameter("param1", id).getResultList();
		return list;
	}
		
	
}