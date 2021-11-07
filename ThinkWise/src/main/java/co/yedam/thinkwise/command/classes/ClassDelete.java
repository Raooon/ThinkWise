package co.yedam.thinkwise.command.classes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.classes.service.MemberClassService;
import co.yedam.thinkwise.classes.service.MemberClassVO;
import co.yedam.thinkwise.classes.serviceImpl.MemberClassServiceImpl;
import co.yedam.thinkwise.comm.Command;

public class ClassDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberClassService classDao = new MemberClassServiceImpl();
		MemberClassVO vo = new MemberClassVO();
		vo.setClass_cd(request.getParameter("class_cd"));
		int n = classDao.classDelete(vo);
		
		String viewPage = null;
		if(n != 0) {
			viewPage = "선택하신 수업이 삭제되었습니다.";
			System.out.println("삭제 성공");
		} else {
			viewPage = "알수없는 오류가 발생하였습니다.";
			System.out.println("삭제 실패");
		}
		
		return "ajax:" + viewPage;
	}
}
