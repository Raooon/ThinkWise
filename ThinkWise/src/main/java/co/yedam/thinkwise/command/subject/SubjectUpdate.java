package co.yedam.thinkwise.command.subject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.subject.service.SubjectService;
import co.yedam.thinkwise.subject.service.SubjectVO;
import co.yedam.thinkwise.subject.serviceImpl.SubjectServiceImpl;

public class SubjectUpdate implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		SubjectService subjectDao = new SubjectServiceImpl();
		SubjectVO vo = new SubjectVO();
		vo.setSubjectCd(request.getParameter("modSubjectCd"));
		vo.setSubjectNm(request.getParameter("modSubjectNm"));
		vo.setSubjectInfo(request.getParameter("modSubjectInfo"));
		vo.setUseYn(request.getParameter("modUseYn"));
		
		System.out.println(request.getParameter("modSubjectCd"));
		System.out.println(request.getParameter("modSubjectNm"));
		System.out.println(request.getParameter("modSubjectInfo"));
		System.out.println(request.getParameter("modUseYn"));
		
		int n = subjectDao.subjectUpdate(vo);
		String viewPage = null;
		
		if(n != 0) {
			System.out.println("과목수정성공");
			request.setAttribute("message", "과목수정성공");
			viewPage= "subjectManageForm.do";
		} else {
			System.out.println("과목수정실패");
			request.setAttribute("message", "과목수정실패");
			viewPage= "";
		}
		return viewPage;
		
	}

}
