package co.yedam.thinkwise.command.subject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.subject.service.SubjectService;
import co.yedam.thinkwise.subject.service.SubjectVO;
import co.yedam.thinkwise.subject.serviceImpl.SubjectServiceImpl;

public class SubjectInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		SubjectService subjectDao = new SubjectServiceImpl();
		SubjectVO vo = new SubjectVO();
		System.out.println(request.getParameter("newSubjectCd"));
		vo.setSubjectCd(request.getParameter("newSubjectCd"));
		vo.setSubjectNm(request.getParameter("newSubjectNm"));
		vo.setSubjectInfo(request.getParameter("newSubjectInfo"));
		vo.setUseYn(request.getParameter("newUseYn"));
		int n = subjectDao.subjectInsert(vo);
		String viewPage = null;
		
		if(n != 0) {
			System.out.println("과목등록성공");
			request.setAttribute("message", "과목등록성공");
			viewPage= "subjectManageForm.do";
		} else {
			System.out.println("과목등록실패");
			request.setAttribute("message", "과목등록실패");
			viewPage= "";
		}
		return viewPage;
	}

}
