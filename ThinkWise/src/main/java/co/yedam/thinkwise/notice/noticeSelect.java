package co.yedam.thinkwise.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;

public class noticeSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeNo(Integer.parseInt(request.getParameter("nid")));
		
		vo = noticeDao.noticeSelect(vo);
		request.setAttribute("notice", vo);
		
		return "board/noticeSelect";
	}

}
