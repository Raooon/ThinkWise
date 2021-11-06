package co.yedam.thinkwise.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberMyInfoVO;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.service.MemberVO;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class SelectMyInfo implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo1 = new MemberVO();
		MemberMyInfoVO vo2 = new MemberMyInfoVO();
		vo1.setEmail((String)session.getAttribute("email"));
		vo2.setEmail((String)session.getAttribute("email"));
		request.setAttribute("member", memberDao.selectMember(vo1));
		request.setAttribute("MyClasses", memberDao.selectMyclass(vo2));
		
		return "member/selectMyInfo";
	}

}
