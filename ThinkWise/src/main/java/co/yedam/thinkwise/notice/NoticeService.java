package co.yedam.thinkwise.notice;

import java.util.List;

public interface NoticeService {

	List<NoticeVO> noticeList();
	
	NoticeVO noticeSelect(NoticeVO vo);
	
	int noticeInsert(NoticeVO vo);
	int noticeUpdate(NoticeVO vo);
	int noticeDelete(NoticeVO vo);
	
	int hitUpdate(NoticeVO vo);
	
}
