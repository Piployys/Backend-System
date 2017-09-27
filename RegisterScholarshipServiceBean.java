package com.mfu;

import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.mfu.entity.RegisterMember;
import com.mfu.entity.RegisterScholarship;

@Stateless
@Remote(RegisterScholarshipService.class)
public class RegisterScholarshipServiceBean implements RegisterScholarshipService {

	@PersistenceContext(unitName = "employeeDatabase")
	EntityManager em;

	@Override
	public void save(RegisterScholarship reg_sch) {
		em.persist(reg_sch);
	}

	@Override
	public void update(RegisterScholarship reg_sch) {
		em.merge(reg_sch);
	}

	@Override
	public void delete(long registerSch_Id) {
		RegisterScholarship Regsch = findRegisterScholarshipById(registerSch_Id);
		if (Regsch != null) {
			em.remove(Regsch);
		}
	}

	@Override
	public RegisterScholarship findRegisterScholarshipById(long registerSch_Id) {
		return em.find(RegisterScholarship.class, registerSch_Id);
	}

	@Override
	public List<RegisterScholarship> getAllRegisterScholarship() {
		return em.createQuery("SELECT reg_sch FROM RegisterScholarship reg_sch").getResultList();
	}

	public List<RegisterScholarship> findRegisterScholarshipByRegisterMemberId(long id) {
		List<RegisterScholarship> list = em
				.createQuery("SELECT reg FROM RegisterScholarship reg WHERE reg.register_Member.id=:param1")
				.setParameter("param1", id).getResultList();
		return list;
	}

}
