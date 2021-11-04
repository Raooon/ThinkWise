package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class SelectMemberList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberService memberDao = new MemberServiceImpl();
		request.setAttribute("members", memberDao.selectMemberList());
		
		return "member/selectMemberList";
	}
}
