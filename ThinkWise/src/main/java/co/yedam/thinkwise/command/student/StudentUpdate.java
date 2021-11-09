package co.yedam.thinkwise.command.student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.student.service.StudentService;
import co.yedam.thinkwise.student.service.StudentVO;
import co.yedam.thinkwise.student.serviceImpl.StudentServiceImpl;

public class StudentUpdate implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		StudentService studentDao = new StudentServiceImpl();
		StudentVO vo = new StudentVO();
		System.out.println(request.getParameter("modId"));
		vo.setId(Integer.parseInt(request.getParameter("modId")));
		vo.setClassCd(request.getParameter("modClassCd"));
		vo.setPayYn(request.getParameter("modPayYn"));
		
		int n = studentDao.studentUpdate(vo);
		String viewPage = null;
		
		if(n != 0) {
			request.setAttribute("message", "학생수업 수정성공");
			viewPage= "studentManageForm.do";
		} else {
			System.out.println("학생수업 수정실패");
			request.setAttribute("message", "학생수업 수정실패");
			viewPage= "";
		}
		return viewPage;
	}

}
