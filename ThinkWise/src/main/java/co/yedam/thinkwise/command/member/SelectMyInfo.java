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
		MemberVO vo1 = new MemberVO();	// 로그인한 회원 vo
		MemberMyInfoVO vo2 = new MemberMyInfoVO(); // 로그인한 회원 수업or자녀수업 조회하기위한 vo
		
		vo1.setEmail((String)session.getAttribute("email"));
		vo2.setEmail((String)session.getAttribute("email"));
		vo1 = memberDao.selectMember(vo1);
		request.setAttribute("member", vo1);
//		System.out.println(vo1.getDivision());
		
		if(vo1.getDivision().equals("P")) {
			MemberMyInfoVO vo3 = new MemberMyInfoVO();
			vo3.setFamily(String.valueOf(vo1.getId()));
			request.setAttribute("MyClasses", memberDao.selectChildClass(vo3));
		} else {
			request.setAttribute("MyClasses", memberDao.selectMyclass(vo2));
			
		}
		
		return "member/selectMyInfo";
	}

}
