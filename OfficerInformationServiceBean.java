package com.mfu;

import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.mfu.entity.*;

@Stateless
@Remote(OfficerInformationService.class)
public class OfficerInformationServiceBean implements OfficerInformationService {

	@PersistenceContext(unitName = "employeeDatabase")
	EntityManager em;

	@Override
	public void save(OfficerInformation OfficerInfo) {
		em.persist(OfficerInfo);
	}

	@Override
	public void update(OfficerInformation OfficerInfo) {
		em.merge(OfficerInfo);
	}

	@Override
	public void delete(long OfficerId) {
		OfficerInformation OfficerInfo = findOfficerInformationById(OfficerId);
		if (OfficerInfo != null) {
			em.remove(OfficerInfo);
		}
	}

	@Override
	public OfficerInformation findOfficerInformationById(long OfficerId) {
		return em.find(OfficerInformation.class, OfficerId);
	}

	@Override
	public List<OfficerInformation> getAllOfficerInformation() {
		return em.createQuery("SELECT OfficerInfo FROM OfficerInformation OfficerInfo").getResultList();
	}

}
