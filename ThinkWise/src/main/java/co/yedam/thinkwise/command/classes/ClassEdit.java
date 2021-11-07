package co.yedam.thinkwise.command.classes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.classes.service.MemberClassService;
import co.yedam.thinkwise.classes.service.MemberClassVO;
import co.yedam.thinkwise.classes.serviceImpl.MemberClassServiceImpl;
import co.yedam.thinkwise.comm.Command;

public class ClassEdit implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberClassService classDao = new MemberClassServiceImpl();
		MemberClassVO vo = new MemberClassVO();
		vo.setClass_cd(request.getParameter("class_cd"));
		vo.setClass_day(request.getParameter("modClass_day"));
		vo.setClass_time(request.getParameter("modClass_time"));
		vo.setFr_period(request.getParameter("modFr_period"));
		vo.setTo_period(request.getParameter("modTo_period"));
		vo.setTeacher_cd(request.getParameter("modTeacher_cd"));
		
		System.out.println(request.getParameter("class_cd"));
		System.out.println(request.getParameter("modClass_day"));
		System.out.println(request.getParameter("modClass_time"));
		System.out.println(request.getParameter("modFr_period"));
		System.out.println(request.getParameter("modTo_period"));
		System.out.println(request.getParameter("modTeacher_cd"));
		
//		vo.setClass_day(request.getParameter("class_day"));
//		vo.setClass_time(request.getParameter("class_time"));
//		vo.setFr_period(request.getParameter("fr_period"));
//		vo.setTo_period(request.getParameter("to_period"));
//		vo.setTeacher_cd(request.getParameter("teacher_cd"));
//		
//		System.out.println(request.getParameter("class_cd"));
//		System.out.println(request.getParameter("class_day"));
//		System.out.println(request.getParameter("class_time"));
//		System.out.println(request.getParameter("fr_period"));
//		System.out.println(request.getParameter("to_period"));
//		System.out.println(request.getParameter("teacher_cd"));
//		
		
		int n = classDao.classUpdate(vo);
		String viewPage = null;
		
		if(n != 0) {
			viewPage = "memberClassList.do";
		} else {
			viewPage = "";
		}
		
		return viewPage;
	}

}
