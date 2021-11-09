package co.yedam.thinkwise.command.student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.student.service.StudentService;
import co.yedam.thinkwise.student.service.StudentVO;
import co.yedam.thinkwise.student.serviceImpl.StudentServiceImpl;

public class StudentInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		StudentService studentDao = new StudentServiceImpl();
		StudentVO vo = new StudentVO();
		
		vo.setId(Integer.parseInt(request.getParameter("newId")));
		vo.setClassCd(request.getParameter("newClassCd"));
		vo.setPayYn(request.getParameter("newPayYn"));
		
		System.out.println(Integer.parseInt(request.getParameter("newId")));
		System.out.println(request.getParameter("newClassCd"));
		System.out.println(request.getParameter("newPayYn"));
		
		
		int n = studentDao.studentInsert(vo);
		String viewPage = null;
		
		if(n != 0) {
			System.out.println("학생수업 등록성공");
			request.setAttribute("message", "학생수업 등록성공");
			viewPage= "studentManageForm.do";
		} else {
			System.out.println("학생수업 등록실패");
			request.setAttribute("message", "학생수업 등록실패");
			viewPage= "";
		}
		return viewPage;
	}

}
