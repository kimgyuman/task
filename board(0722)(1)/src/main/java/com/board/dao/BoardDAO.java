package com.board.dao;

import java.util.List;

import com.board.domain.BoardVO;

public interface BoardDAO {

	//게시글 목록보기
	public List<BoardVO> list() throws Exception;
	
	
	//게시글 작성하기
	public void write(BoardVO vo) throws Exception;
	
	//게시글 조회하기
	public BoardVO view(int seq_counsel) throws Exception;
	
	//게시글 수정
	public void update(BoardVO vo) throws Exception;
	
	//게시글 삭제
	public void delete(int seq_counsel) throws Exception;
	
	//만료된 게시글 삭제
	void expiredBoard() throws Exception;
	
	//비속어 조회
	List<BoardVO> maskingList() throws Exception;
	
	//비속어 업데이트
	void maskingUpdate(BoardVO vo) throws Exception;
}
