package com.aster.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aster.test.dao.MemberDAO;
import com.aster.test.dto.Member;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public List<Member> list() {
		
		return memberDAO.list();
	}

	@Override
	public List<Member> listByTeam(int teamNo, int projectLevel) {		
		return memberDAO.listByTeam(teamNo, projectLevel);
	}

	@Override
	public Member read(int memberNo) {
		return memberDAO.read(memberNo);
	}

}
