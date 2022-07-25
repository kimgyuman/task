package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.BoardDAO;
import com.board.domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

 @Inject
 private BoardDAO dao;
 
 
 
 
 	//게시글 목록
	@Override
	public List<BoardVO> list() throws Exception {
		return dao.list();
	}
	//게시글 작성
	@Override
	public void write(BoardVO vo) throws Exception {
		dao.write(vo);		
	}
	//게시글 조회
	@Override
	public BoardVO view(int seq_counsel) throws Exception {	
		return dao.view(seq_counsel);
	}
	//게시글 수정
	@Override
	public void update(BoardVO vo) throws Exception {		
		dao.update(vo);		
	}
	//게시글 삭제
	@Override
	public void delete(int seq_counsel) throws Exception {
		dao.delete(seq_counsel);		
	}
	
	
	
	
	
	
	
}