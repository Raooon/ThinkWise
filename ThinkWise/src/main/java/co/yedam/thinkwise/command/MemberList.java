package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;

public class MemberList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
//		MemberService memberDao = new MemberServiceImpl();
//		request.setAttribute("members", memberDao.selectMemberList());
		return "member/memberList";
	}

}
