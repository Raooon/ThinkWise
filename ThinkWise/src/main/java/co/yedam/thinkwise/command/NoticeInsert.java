package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.notice.service.NoticeService;
import co.yedam.thinkwise.notice.service.NoticeVO;
import co.yedam.thinkwise.notice.serviceImpl.NoticeServiceImpl;

public class NoticeInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setTitle(request.getParameter("title"));
		vo.setContents(request.getParameter("contents"));
		
		int n = noticeDao.noticeInsert(vo);
		
		if (n != 1) {
			request.setAttribute("message", "공지사항 등록을 실패했습니다.");
		} else {
			request.setAttribute("message", "공지사항이 "+n+"건 등록 됐습니다.");
		}
		
		return "notice/noticeSuccess";
	}

}
