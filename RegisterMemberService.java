package com.mfu;

import java.util.List;

import com.mfu.entity.RegisterMember;

public interface RegisterMemberService {

	void save(RegisterMember reg);

	void update(RegisterMember reg);

	void delete(long RegisterId);

	RegisterMember findRegisterMemberById(long RegisterId);

	List<RegisterMember> getRegisterMembers();

}
