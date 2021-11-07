package co.yedam.thinkwise.command.classes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.classes.service.MemberClassService;
import co.yedam.thinkwise.classes.service.MemberClassVO;
import co.yedam.thinkwise.classes.serviceImpl.MemberClassServiceImpl;
import co.yedam.thinkwise.comm.Command;

public class ClassInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberClassService classDao = new MemberClassServiceImpl();
		MemberClassVO vo = new MemberClassVO();
		vo.setClass_cd(request.getParameter("newClass_cd"));
		vo.setSubject_cd(request.getParameter("newSubject_cd"));
		vo.setClass_day(request.getParameter("newClass_day"));
		vo.setClass_time(request.getParameter("newClass_time"));
		vo.setFr_period(request.getParameter("newFr_period"));
		vo.setTo_period(request.getParameter("newTo_period"));
		vo.setTeacher_cd(request.getParameter("newTeacher_cd"));
		
		int n = classDao.classInsert(vo);
		
		if(n != 0) {
			System.out.println("수업등록성공");
		} else {
			System.out.println("수업등록성공");
		}
		return "memberClassList.do";
	}
}
