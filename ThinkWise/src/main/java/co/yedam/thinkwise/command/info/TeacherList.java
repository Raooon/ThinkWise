package co.yedam.thinkwise.command.info;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.teacher.service.TeacherService;
import co.yedam.thinkwise.teacher.serviceImpl.TeacherServiceImpl;

public class TeacherList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		TeacherService teacherDao = new TeacherServiceImpl();
		ObjectMapper mapper = new ObjectMapper(); //json 라이브러리
		String teachers = null;
		try {
			teachers = mapper.writeValueAsString(teacherDao.teacherList());
		}catch(JacksonException e) {
			e.printStackTrace();
		}
		
		//request.setAttribute("teachers", teacherDao.teacherList());
		
		return "ajax:" + teachers;
	}

}
