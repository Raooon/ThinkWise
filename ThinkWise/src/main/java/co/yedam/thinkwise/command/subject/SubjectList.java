package co.yedam.thinkwise.command.subject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.subject.service.SubjectService;
import co.yedam.thinkwise.subject.serviceImpl.SubjectServiceImpl;

public class SubjectList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		SubjectService subjectDao = new SubjectServiceImpl();
		ObjectMapper mapper = new ObjectMapper(); //json 라이브러리
		String subjects = null;
		
		try {
			subjects = mapper.writeValueAsString(subjectDao.subjectList());
		}catch(JacksonException e) {
			e.printStackTrace();
		}
		
		
		//request.setAttribute("subjects", subjectDao.subjectList());
		
		return "ajax:" + subjects;
	}

}
