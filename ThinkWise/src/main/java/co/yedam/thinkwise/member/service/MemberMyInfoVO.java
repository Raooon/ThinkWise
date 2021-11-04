package co.yedam.thinkwise.member.service;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MemberMyInfoVO {

	private int id;
	private String password;
	private String name;
	private String gender;
	private String birth;
	private String tel;
	private String email;
	private String address;
	private String division;
	private String family;
	private String class_cd;
	private String subject_nm;
	private String class_time;
	private String fr_period;
	private String to_period;
	private String teacher_nm;
}
