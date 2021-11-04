package co.yedam.thinkwise.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;

public class NoticeList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeService noticeDao = new NoticeServiceImpl();
		
		request.setAttribute("notices", noticeDao.noticeList());
		
		return "board/notice";
	}

}
