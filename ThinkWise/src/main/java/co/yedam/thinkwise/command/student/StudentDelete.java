package co.yedam.thinkwise.command.student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.student.service.StudentService;
import co.yedam.thinkwise.student.service.StudentVO;
import co.yedam.thinkwise.student.serviceImpl.StudentServiceImpl;

public class StudentDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		StudentService studentDao = new StudentServiceImpl();
		StudentVO vo = new StudentVO();;
		vo.setId(Integer.parseInt(request.getParameter("id")));
		int n = studentDao.studentDelete(vo);

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
