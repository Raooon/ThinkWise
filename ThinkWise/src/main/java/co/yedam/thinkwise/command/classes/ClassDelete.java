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
			viewPage = "memberClassList.do";
		} else {
			viewPage = "";
		}
		
		return viewPage;
	}
}
