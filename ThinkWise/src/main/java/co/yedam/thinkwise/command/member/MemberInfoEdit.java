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
		String preAddress = request.getParameter("address_kakao");
		String afterAddress = request.getParameter("address_detail");
		
		if(preAddress.equals("") && !afterAddress.equals("")) {
			System.out.println("1");
			preAddress = "before";
			vo.setAddress(preAddress + "@" + afterAddress);
		}
		else if(!preAddress.equals("") && afterAddress.equals("")) {
			System.out.println("2");
			afterAddress = "after";
			System.out.println(afterAddress);
			vo.setAddress(preAddress + "@" + afterAddress);
		}
		else if(preAddress.equals("") && afterAddress.equals("")) {
			System.out.println("3");
			preAddress = "before";
			afterAddress = "after";
			vo.setAddress(preAddress + "@" + afterAddress);
		}
		else if(!preAddress.equals("") && !afterAddress.equals("")) {
			System.out.println("4");
			System.out.println(afterAddress);
			vo.setAddress(preAddress + "@" + afterAddress);
		}
		
		int r = memberDao.updateMemberInfo(vo);
		System.out.println(vo.getAddress());
		String viewPage = null;
		
		if(r != 0) {
			viewPage = "변경이 완료되었습니다.";
		} else {
			viewPage = "알수없는 오류가 발생했습니다.";
		}
		return "ajax:" + viewPage;
	}

}
