package co.yedam.thinkwise.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.service.MemberVO;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class MemberInfoEdit implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setId(Integer.parseInt(request.getParameter("id")));
		vo.setName(request.getParameter("name"));
		vo.setTel(request.getParameter("tel"));
		vo.setAddress(request.getParameter("address"));
		int r = memberDao.updateMemberInfo(vo);
		
		String viewPage = null;
		
		if(r != 0) {
			viewPage = "변경이 완료되었습니다.";
		} else {
			viewPage = "알수없는 오류가 발생했습니다.";
		}
		return "ajax:" + viewPage;
	}

}