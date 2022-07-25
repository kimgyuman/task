package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.CommentDAO;
import com.board.domain.CommentVO;


@Service
public class CommentServiceImpl implements CommentService {

	@Inject
	private CommentDAO dao;

	
	@Override
	public List<CommentVO> list(int C_board_counsel) throws Exception {
		return dao.list(C_board_counsel);
	}

	@Override
	public void write(CommentVO vo) throws Exception {
		dao.write(vo);
		
	}

	@Override
	public void update(CommentVO vo) throws Exception {
		dao.update(vo);
		
	}

	@Override
	public void delete(CommentVO vo) throws Exception {
		dao.delete(vo);
		
	}

	@Override
	public CommentVO commentSelect(int C_seq_counsel) throws Exception {
		
		return dao.commentSelect(C_seq_counsel);
	}

}
