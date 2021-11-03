package co.yedam.thinkwise.member.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class MemberVO {
	
	private int id;
	private String password;
	private String name;
	private String gender;
	private String birth;
	private String tel;
	private String email;
	private String address;
	private String division;
	private String parent;
}
