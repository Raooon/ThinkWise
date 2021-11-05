package co.yedam.thinkwise.board.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {

	int boardNo;
	int id;
	Date enrollDt;
	Date modifyDt;
	String title;
	String contents;
	String image;
	int hit;
	int likes;
	
}
