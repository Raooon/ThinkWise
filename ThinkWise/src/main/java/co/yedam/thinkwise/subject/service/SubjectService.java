package co.yedam.thinkwise.subject.service;

import java.util.List;

public interface SubjectService {
	List<SubjectVO> subjectList();
	
	SubjectVO subjectSelect(SubjectVO vo);
	
	int subjectInsert(SubjectVO vo);
	int subjectUpdqte(SubjectVO vo);
	int subjectDelete(SubjectVO vo);
}
