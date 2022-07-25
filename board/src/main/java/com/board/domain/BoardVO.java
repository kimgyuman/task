package com.board.domain;

import java.util.Date;

import lombok.Data;



@Data
public class BoardVO {
	
	private int seq_counsel;
	private String title_counsel;
	private String content_counsel;
	private String writer_counsel;
	private Date regDate_counsel;
	private int viewCnt_counsel;

	
	
	
}
