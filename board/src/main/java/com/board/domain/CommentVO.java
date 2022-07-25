package com.board.domain;

import java.util.Date;

public class CommentVO {

	/*
	 CREATE TABLE C_counsel_info(
		 	C_seq_counsel INT NOT NULL AUTO_INCREMENT,
		 	C_board_counsel INT NOT NULL,
		 	C_writer_counsel varchar(30) not null,
			C_content_counsel 	text 			not null,
			C_regDate_counsel 	timestamp 	not null default now(),
			PRIMARY KEY(C_seq_counsel, C_board_counsel),
			FOREIGN KEY(C_board_counsel) REFERENCES counsel_info(seq_counsel)
			); 
	*/
	
	private int C_seq_counsel;
	private int C_board_counsel;
	private String C_writer_counsel;
	private String C_content_counsel;
	private Date C_regDate_counsel;
	public int getC_seq_counsel() {
		return C_seq_counsel;
	}
	public void setC_seq_counsel(int c_seq_counsel) {
		C_seq_counsel = c_seq_counsel;
	}
	public int getC_board_counsel() {
		return C_board_counsel;
	}
	public void setC_board_counsel(int c_board_counsel) {
		C_board_counsel = c_board_counsel;
	}
	public String getC_writer_counsel() {
		return C_writer_counsel;
	}
	public void setC_writer_counsel(String c_writer_counsel) {
		C_writer_counsel = c_writer_counsel;
	}
	public String getC_content_counsel() {
		return C_content_counsel;
	}
	public void setC_content_counsel(String c_content_counsel) {
		C_content_counsel = c_content_counsel;
	}
	public Date getC_regDate_counsel() {
		return C_regDate_counsel;
	}
	public void setC_regDate_counsel(Date c_regDate_counsel) {
		C_regDate_counsel = c_regDate_counsel;
	}
	
	
	
	
	
	
}
