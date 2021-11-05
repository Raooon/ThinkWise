package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.notice.service.NoticeService;
import co.yedam.thinkwise.notice.service.NoticeVO;
import co.yedam.thinkwise.notice.serviceImpl.NoticeServiceImpl;

public class NoticeSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeNo(Integer.parseInt(request.getParameter("nid")));
		
		noticeDao.hitUpdate(vo);
		
		vo = noticeDao.noticeSelect(vo);
		request.setAttribute("notice", vo);
		
		return "notice/noticeSelect";
	}

}
