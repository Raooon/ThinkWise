package co.yedam.thinkwise.classes.service;

import java.util.List;

public interface MemberClassMapper {
	
	List<MemberClassVO> selectClassList();
	MemberClassVO classSelect(MemberClassVO vo);
	
	int classInsert(MemberClassVO vo);
	int classUpdate(MemberClassVO vo);
	int classDelete(MemberClassVO vo);
}
