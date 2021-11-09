package co.yedam.thinkwise.teacher.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.thinkwise.comm.DataSource;
import co.yedam.thinkwise.teacher.service.TeacherService;
import co.yedam.thinkwise.teacher.service.TeacherVO;
import co.yedam.thinkwise.teacher.service.TeacherMapper;

public class TeacherServiceImpl implements TeacherService {
	private SqlSession sqlSession = DataSource.getInstance().openSession();
	private TeacherMapper map = sqlSession.getMapper(TeacherMapper.class);

	@Override
	public List<TeacherVO> teacherList() {
		return map.teacherList();
	}
	
	@Override
	public List<TeacherVO> teacherListAll() {
		return map.teacherListAll();
	}

	@Override
	public TeacherVO teacherSelect(TeacherVO vo) {
		return map.teacherSelect(vo);
	}

	@Override
	public int teacherInsert(TeacherVO vo) {
		return map.teacherInsert(vo);
	}

	@Override
	public int teacherUpdate(TeacherVO vo) {
		return map.teacherUpdate(vo);
	}

	@Override
	public int teacherDelete(TeacherVO vo) {
		return map.teacherDelete(vo);
	}

}
