package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.notice.service.NoticeService;
import co.yedam.thinkwise.notice.service.NoticeVO;
import co.yedam.thinkwise.notice.serviceImpl.NoticeServiceImpl;

public class NoticeDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeNo(Integer.parseInt(request.getParameter("nid")));
		
		int n = noticeDao.noticeDelete(vo);
		
		if ( n != 1) {
			request.setAttribute("message", "삭제에 실패했습니다.");
		} else {
			request.setAttribute("message", n+"건 삭제에 성공했습니다.");
		}
		
		return "notice/noticeSuccess";
	}

}
