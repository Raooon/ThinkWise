package co.yedam.thinkwise.notice;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO {

	int noticeNo;
	String id;
	Date enrollDt;
	Date modifyDt;
	String title;
	String contents;
	int hit;
	
}
