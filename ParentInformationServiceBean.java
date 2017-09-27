package com.mfu;

import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.mfu.entity.*;
import com.mfu.*;

@Stateless
@Remote(ParentInformationService.class)
public class ParentInformationServiceBean implements ParentInformationService {

	@PersistenceContext(unitName = "employeeDatabase")
	EntityManager em;

	@Override
	public void save(ParentInformation parentInfo) {
		em.persist(parentInfo);
	}

	@Override
	public void update(ParentInformation parentInfo) {
		em.merge(parentInfo);
	}

	@Override
	public void delete(long parentInfo_Id) {
		ParentInformation parentInfo = findParentInformationById(parentInfo_Id);
		if (parentInfo != null) {
			em.remove(parentInfo);
		}
	}

	@Override
	public ParentInformation findParentInformationById(long parentInfo_Id) {
		return em.find(ParentInformation.class, parentInfo_Id);
	}

	@Override
	public List<ParentInformation> findParentInformationByRegisterSchId(long id) {
		List<ParentInformation> list = em
				.createQuery(
						"SELECT parentInfo FROM ParentInformation parentInfo WHERE parentInfo.register_Scholarship.id=:param1")
				.setParameter("param1", id).getResultList();
		return list;
	}

}