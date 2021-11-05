package co.yedam.thinkwise.notice.service;

import java.util.List;

public interface NoticeMapper {

	List<NoticeVO> noticeList();
	
	NoticeVO noticeSelect(NoticeVO vo);
	
	int noticeInsert(NoticeVO vo);
	int noticeUpdate(NoticeVO vo);
	int noticeDelete(NoticeVO vo);
	
	int hitUpdate(NoticeVO vo);
	
}
