package co.yedam.thinkwise.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.thinkwise.comm.Command;

public class NoticeInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setTitle(request.getParameter("title"));
		vo.setContents(request.getParameter("contents"));
		
		System.out.println(vo.getId());
		System.out.println(vo.getContents());
		
		int n = noticeDao.noticeInsert(vo);
		
		if (n != 1) {
			session.setAttribute("message", "공지사항 등록을 실패했습니다.");
		} else {
			session.setAttribute("message", "공지사항이 "+n+"건 등록 됐습니다.");
		}
		
		return "board/noticeSuccess";
	}

}
