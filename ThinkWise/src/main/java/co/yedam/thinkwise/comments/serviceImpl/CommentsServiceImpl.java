package co.yedam.thinkwise.comments.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.thinkwise.comm.DataSource;
import co.yedam.thinkwise.comments.service.CommentsMapper;
import co.yedam.thinkwise.comments.service.CommentsService;
import co.yedam.thinkwise.comments.service.CommentsVO;

public class CommentsServiceImpl implements CommentsService {
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CommentsMapper map = sqlSession.getMapper(CommentsMapper.class);
	
	@Override
	public List<CommentsVO> commentsList(CommentsVO vo) {
		return map.commentsList(vo);
	}

	@Override
	public CommentsVO commentsSelect(CommentsVO vo) {
		return map.commentsSelect(vo);
	}

	@Override
	public int commentsInsert(CommentsVO vo) {
		return map.commentsInsert(vo);
	}

	@Override
	public int commentsUpdate(CommentsVO vo) {
		return map.commentsUpdate(vo);
	}

	@Override
	public int commentsDelete(CommentsVO vo) {
		return map.commentsDelete(vo);
	}

	@Override
	public int commentsLikesUpdate(CommentsVO vo) {
		return map.commentsLikesUpdate(vo);
	}

}
