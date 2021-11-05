package co.yedam.thinkwise.command.member;

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
		
		// 부모 이메일에서 부모 아이디 가져오기.
		vo.setParent(request.getParameter("parent"));
		System.out.println(request.getParameter("parent"));
		MemberVO p = memberDao.selectParent(vo);
		
		MemberVO vo1 = new MemberVO();
		if(p == null) {
			if(request.getParameter("parent") == null) {
				
				vo1.setEmail(request.getParameter("email"));
				vo1.setPassword(request.getParameter("password"));
				vo1.setName(request.getParameter("name"));
				vo1.setGender(request.getParameter("gender"));
				vo1.setBirth(request.getParameter("birth").replaceAll("-", ""));
				vo1.setTel(request.getParameter("tel"));
				vo1.setAddress(request.getParameter("address"));
				vo1.setDivision(request.getParameter("division"));
				
				int n = memberDao.insertMember(vo1);
				
				if( n != 0) {
					request.setAttribute("message", "회원가입을 완료하였습니다.");
					viewPage = "member/memberLogin";
					System.out.println("회원가입 완료-부모값 없음");
				} else {
					request.setAttribute("message", "회원가입을 실패하였습니다.");
					viewPage = "member/memberInput";
					System.out.println("회원가입 실패-부모값 없음");
				}
			} else {
				vo1.setEmail(request.getParameter("email"));
				vo1.setPassword(request.getParameter("password"));
				vo1.setName(request.getParameter("name"));
				vo1.setGender(request.getParameter("gender"));
				vo1.setBirth(request.getParameter("birth").replaceAll("-", ""));
				vo1.setTel(request.getParameter("tel"));
				vo1.setAddress(request.getParameter("address"));
				vo1.setDivision(request.getParameter("division"));
				
				int n = memberDao.insertMember(vo1);
				
				if( n != 0) {
					request.setAttribute("message", "회원가입을 완료하였습니다.");
					viewPage = "member/memberLogin";
					System.out.println("회원가입 완료-부모값 오류");
				} else {
					request.setAttribute("message", "회원가입을 실패하였습니다.");
					viewPage = "member/memberInput";
					System.out.println("회원가입 실패-부모값 오류");
				}
			}
		} else {
			vo1.setEmail(request.getParameter("email"));
			vo1.setPassword(request.getParameter("password"));
			vo1.setName(request.getParameter("name"));
			vo1.setGender(request.getParameter("gender"));
			vo1.setBirth(request.getParameter("birth").replaceAll("-", ""));
			vo1.setTel(request.getParameter("tel"));
			vo1.setAddress(request.getParameter("address"));
			vo1.setDivision(request.getParameter("division"));
			vo1.setParent(request.getParameter("parent"));
			
			int m = memberDao.insertMemberParent(vo1);
			
			if( m != 0) {
				request.setAttribute("message", "회원가입을 완료하였습니다.");
				viewPage = "member/memberLogin";
				System.out.println("회원가입 성공");
			} else {
				request.setAttribute("message", "회원가입을 실패하였습니다.");
				viewPage = "member/memberInput";
				System.out.println("회원가입 실패");
			}
		}
		
		return viewPage;
}

}