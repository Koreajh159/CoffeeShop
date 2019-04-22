package com.coffee.model.repository;

import java.util.List;

import com.coffee.model.domain.Member;

public interface MemberDAO {
	public int insert(Member member);
	public List selectAll();
	public Member select(int member_id);
	public int update(Member memeber);
	public int updatePoint(Member member);
	public int delete(Member member);
	public Member logIn(Member memeber);
	public Member findId(Member member);
	public Member findPass(Member member);
	public boolean checkInfo(Member member);
}
