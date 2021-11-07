package co.yedam.thinkwise.comments.service;

import java.util.List;

public interface CommentsMapper {

	List<CommentsVO> commentsList(CommentsVO vo);
	
	CommentsVO commentsSelect(CommentsVO vo);
	
	int commentsInsert(CommentsVO vo);
	int commentsUpdate(CommentsVO vo);
	int commentsDelete(CommentsVO vo);
	
	int commentsLikesUpdate(CommentsVO vo);
	
}
