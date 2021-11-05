package co.yedam.thinkwise.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.service.MemberVO;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class MemberLogin implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 로그인
		HttpSession session = request.getSession();
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setEmail(request.getParameter("email"));
		vo.setPassword(request.getParameter("password"));
		vo = memberDao.selectMember(vo);
		
		if( vo != null) {
			request.setAttribute("message", vo.getName() + "님 환영합니다.");
			session.setAttribute("id", vo.getId());
			session.setAttribute("email", vo.getEmail());
			session.setAttribute("name", vo.getName());
			System.out.println("성공");
			
			return "home/home";
		} else {
			request.setAttribute("message", "아이디 또는 비밀번호가 틀렸습니다.");
			System.out.println("실패");
			return "member/memberLogin";
		}
	}

}
