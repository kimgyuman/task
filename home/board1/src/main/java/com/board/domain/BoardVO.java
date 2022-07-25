package com.board.domain;

import java.util.Date;

public class BoardVO {
	
	/*
	create table counsel_info(
			  seq_counsel int not null auto_increment,
			  title_counsel varchar(50) not null,
			  content_counsel text not null,
			  writer_counsel varchar(30) not null,
			  regDate_counsel timestamp not null default now(),
			  viewCnt_counsel int default 0,
			  primary key(seq_counsel)
			);
	*/
	
	private int seq_counsel;
	private String title_counsel;
	private String content_counsel;
	private String writer_counsel;
	private Date regDate_counsel;
	private int viewCnt_counsel;
	
	
	

	public int getSeq_counsel() {
		return seq_counsel;
	}
	public void setSeq_counsel(int seq_counsel) {
		this.seq_counsel = seq_counsel;
	}
	public String getTitle_counsel() {
		return title_counsel;
	}
	public void setTitle_counsel(String title_counsel) {
		this.title_counsel = title_counsel;
	}
	public String getContent_counsel() {
		return content_counsel;
	}
	public void setContent_counsel(String content_counsel) {
		this.content_counsel = content_counsel;
	}
	public String getWriter_counsel() {
		return writer_counsel;
	}
	public void setWriter_counsel(String writer_counsel) {
		this.writer_counsel = writer_counsel;
	}
	public Date getRegDate_counsel() {
		return regDate_counsel;
	}
	public void setRegDate_counsel(Date regDate_counsel) {
		this.regDate_counsel = regDate_counsel;
	}
	public int getViewCnt_counsel() {
		return viewCnt_counsel;
	}
	public void setViewCnt_counsel(int viewCnt_counsel) {
		this.viewCnt_counsel = viewCnt_counsel;
	}

	
	
}
