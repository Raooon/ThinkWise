package co.yedam.thinkwise.command.subject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.subject.service.SubjectService;
import co.yedam.thinkwise.subject.serviceImpl.SubjectServiceImpl;

public class SubjectManageForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		SubjectService subjectDao = new SubjectServiceImpl();
		request.setAttribute("subjects", subjectDao.subjectListAll());
		System.out.println(request);
		return "subject/subjectManageForm";
	}

}
