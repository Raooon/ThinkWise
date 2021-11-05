package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.service.MemberVO;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class SelectParent implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 입력 부모 이메일에서 id 값 찾아오기
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setEmail(request.getParameter("email"));
		
		vo = memberDao.selectParent(vo);
		System.out.println(memberDao.selectParent(vo));
		
		String viewPage = null;
		
		if(vo != null) {
			
		}
		return null;
	}

}
