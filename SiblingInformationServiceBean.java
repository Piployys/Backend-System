package com.mfu;

import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.mfu.entity.*;
import com.mfu.*;

@Stateless
@Remote(SiblingInformationService.class)
public class SiblingInformationServiceBean implements SiblingInformationService {

	@PersistenceContext(unitName = "employeeDatabase")
	EntityManager em;

	@Override
	public void save(SiblingInformation SiblingInfo) {
		em.persist(SiblingInfo);
	}

	@Override
	public void update(SiblingInformation SiblingInfo) {
		em.merge(SiblingInfo);
	}

	@Override
	public void delete(long siblingInfo_Id) {
		SiblingInformation SiblingInfo = findSiblingInformationById(siblingInfo_Id);
		if (SiblingInfo != null) {
			em.remove(SiblingInfo);
		}
	}

	@Override
	public SiblingInformation findSiblingInformationById(long siblingInfo_Id) {
		return em.find(SiblingInformation.class, siblingInfo_Id);
	}

	@Override
	public List<SiblingInformation> findSiblingInformationByRegisterSchId(long id) {
		List<SiblingInformation> list = em
				.createQuery(
						"SELECT SiblingInfo FROM SiblingInformation SiblingInfo WHERE SiblingInfo.register_Scholarship.id=:param1")
				.setParameter("param1", id).getResultList();
		return list;
	}

}