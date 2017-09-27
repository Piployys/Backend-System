package com.mfu;

import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.mfu.entity.*;
import com.mfu.*;

@Stateless
@Remote(AnnounceScholarshipInfoService.class)
public class AnnounceScholarshipInfoServiceBean implements AnnounceScholarshipInfoService {

	@PersistenceContext(unitName = "employeeDatabase")
	EntityManager em;

	@Override
	public void save(AnnounceScholarshipInfo anc) {
		em.persist(anc);
	}

	@Override
	public void update(AnnounceScholarshipInfo anc) {
		em.merge(anc);
	}

	@Override
	public void delete(long announceSchInfo_Id) {
		AnnounceScholarshipInfo anc = findAnnounceScholarshipInfoById(announceSchInfo_Id);
		if (anc != null) {
			em.remove(anc);
		}
	}

	@Override
	public AnnounceScholarshipInfo findAnnounceScholarshipInfoById(long id) {
		return em.find(AnnounceScholarshipInfo.class, id);
	}

	@Override
	public List<AnnounceScholarshipInfo> getAnnounceScholarshipInfo() {
		return em.createQuery("SELECT anc FROM AnnounceScholarshipInfo anc").getResultList();
	}

	@Override
	public List<AnnounceScholarshipInfo> findAnnounceScholarshipInfoByScholarshipId(long id) {
		List<AnnounceScholarshipInfo> list = em
				.createQuery("SELECT anc FROM AnnounceScholarshipInfo anc WHERE anc.announce.id=:param1")
				.setParameter("param1", id).getResultList();
		return list;
	}
	
	public List<AnnounceScholarshipInfo> findAnnounceScholarshipInfoByRegId(long id) {
		List<AnnounceScholarshipInfo> list = em
				.createQuery("SELECT list FROM AnnounceScholarshipInfo list WHERE list.enroll.id=:param1")
				.setParameter("param1", id).getResultList();
		return list;
	}

}