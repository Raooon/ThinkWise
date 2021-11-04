package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.service.MemberVO;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class MemberInput implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		String viewPage = null;
		vo.setEmail(request.getParameter("email"));
		
		vo = memberDao.selectMember(vo);
		
		if (vo != null) {
			request.setAttribute("message", "이미 존재하는 아이디 입니다.");
			viewPage = "member/memberinput";
		} else {
			MemberVO vo1 = new MemberVO();
			vo1.setEmail(request.getParameter("email"));
			vo1.setPassword(request.getParameter("password"));
			vo1.setName(request.getParameter("name"));
			vo1.setGender(request.getParameter("gender"));
			vo1.setBirth(request.getParameter("birth"));
			
		}
		vo = memberDao.selectMember(vo);
		return "member/login";
	}

}
