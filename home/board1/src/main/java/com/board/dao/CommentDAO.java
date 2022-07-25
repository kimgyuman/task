package com.board.dao;

import java.util.List;

import com.board.domain.CommentVO;

public interface CommentDAO {

	
	// 댓글 조회
	public List<CommentVO> list(int C_board_counsel) throws Exception;

	// 댓글 작성
	public void write(CommentVO vo) throws Exception;
	
	// 특정 댓글 조회
	public CommentVO commentSelect(int C_seq_counsel) throws Exception;

	// 댓글 수정
	public void update(CommentVO vo) throws Exception;

	// 댓글 삭제
	public void delete(CommentVO vo) throws Exception;
	
}
