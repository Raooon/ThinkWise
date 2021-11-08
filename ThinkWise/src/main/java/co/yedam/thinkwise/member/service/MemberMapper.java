package co.yedam.thinkwise.member.service;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface MemberMapper {
	@Select("select * from member")
	List<MemberVO> selectMemberList();
	
	MemberVO selectMember(MemberVO vo);
	int insertMember(MemberVO vo);
	int deleteMember(MemberVO vo);
	int updateMember(MemberVO vo);

	int updateMemberPw(MemberVO vo);
	int updateMemberInfo(MemberVO vo);
	MemberVO memberCurPwCheck(MemberVO vo);

	MemberVO selectParent(MemberVO vo);
	MemberVO selectPassword(MemberVO vo);
	int insertMemberParent (MemberVO vo);
	
	List<MemberMyInfoVO> selectMyclass(MemberMyInfoVO vo);
	List<MemberMyInfoVO> selectChildClass(MemberMyInfoVO vo);
	
	int updateMemberPwFind(MemberVO vo);
}
