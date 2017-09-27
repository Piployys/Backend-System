package com.mfu;

import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.mfu.entity.RegisterMember;


@Stateless
@Remote(RegisterMemberService.class)
public class RegisterMemberServiceBean implements RegisterMemberService {

	@PersistenceContext(unitName = "employeeDatabase")
	EntityManager em;

	@Override
	public void save(RegisterMember reg) {
		em.persist(reg);
	}

	@Override
	public void update(RegisterMember reg) {
		em.merge(reg);
	}

	@Override
	public void delete(long RegisterId) {
		RegisterMember reg = findRegisterMemberById(RegisterId);
		if (reg != null) {
			em.remove(reg);
		}
	}

	@Override
	public RegisterMember findRegisterMemberById(long RegisterId) {
		return em.find(RegisterMember.class, RegisterId);
	}

	@Override
	public List<RegisterMember> getRegisterMembers() {
		return em.createQuery("SELECT reg FROM RegisterMember reg").getResultList();
	}


}

	
