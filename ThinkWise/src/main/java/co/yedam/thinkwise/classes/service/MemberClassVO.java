package co.yedam.thinkwise.classes.service;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MemberClassVO {
	
	private String class_cd;
	private String subject_cd;
	private String class_day;
	private String class_time;
	private String fr_period;
	private String to_period;
	private String teacher_cd;
}
