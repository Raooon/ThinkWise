package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.notice.service.NoticeService;
import co.yedam.thinkwise.notice.service.NoticeVO;
import co.yedam.thinkwise.notice.serviceImpl.NoticeServiceImpl;

public class NoticeUpdate implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeNo(Integer.parseInt(request.getParameter("noticeNo")));
		vo.setTitle(request.getParameter("title"));
		vo.setContents(request.getParameter("contents"));
		
		int n = noticeDao.noticeUpdate(vo);
		
		if ( n != 1 ) {
			request.setAttribute("message", "수정에 실패했습니다.");
		} else {
			request.setAttribute("message", "수정에 성공했습니다.");
		}
		
		return "notice/noticeSuccess";
	}

}
