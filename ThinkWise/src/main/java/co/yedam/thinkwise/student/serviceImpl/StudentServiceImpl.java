package co.yedam.thinkwise.student.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.thinkwise.comm.DataSource;
import co.yedam.thinkwise.student.service.StudentMapper;
import co.yedam.thinkwise.student.service.StudentService;
import co.yedam.thinkwise.student.service.StudentVO;

public class StudentServiceImpl implements StudentService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private StudentMapper map = sqlSession.getMapper(StudentMapper.class);

	@Override
	public List<StudentVO> studentList() {
		return map.studentList();
	}

	@Override
	public List<StudentVO> classList() {
		return map.classList();
	}

	@Override
	public int studentInsert(StudentVO vo) {
		return map.studentInsert(vo);
	}

	@Override
	public int studentUpdate(StudentVO vo) {
		return map.studentUpdate(vo);
	}

	@Override
	public int studentDelete(StudentVO vo) {
		return map.studentDelete(vo);
	}


}
