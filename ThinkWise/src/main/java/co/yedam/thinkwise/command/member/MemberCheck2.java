package co.yedam.thinkwise.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.service.MemberVO;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class MemberCheck2 implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 이메일 유무 확인
				MemberService memberDao = new MemberServiceImpl();
				MemberVO vo = new MemberVO();
				vo.setEmail(request.getParameter("email"));

				vo = memberDao.selectMember(vo);
				
				String viewPage = null;
				if(vo == null) {
					viewPage = "회원 정보가 존재하지 않습니다.";
				} else {
					viewPage = "이메일이 확인 되었습니다.";
				}
				
				return "ajax:"+viewPage;
	}

}
