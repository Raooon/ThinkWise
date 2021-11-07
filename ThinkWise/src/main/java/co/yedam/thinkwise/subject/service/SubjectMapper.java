package co.yedam.thinkwise.subject.service;

import java.util.List;

public interface SubjectMapper {
	List<SubjectVO> subjectList();
	
	SubjectVO subjectSelect(SubjectVO vo);
	
	int subjectInsert(SubjectVO vo);
	int subjectUpdate(SubjectVO vo);
	int subjectDelete(SubjectVO vo);
}
