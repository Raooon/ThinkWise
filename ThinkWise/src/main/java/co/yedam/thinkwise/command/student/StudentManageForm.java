package co.yedam.thinkwise.command.student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.student.service.StudentService;
import co.yedam.thinkwise.student.serviceImpl.StudentServiceImpl;

public class StudentManageForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		StudentService studentDao = new StudentServiceImpl();
		request.setAttribute("students", studentDao.studentList());
		System.out.println(request);
		return "student/studentClass";
	}

}
