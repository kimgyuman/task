package com.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.CommentVO;

@Repository
public class CommentDAOImpl implements CommentDAO {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.board.mappers.comment";
	
	@Override
	public List<CommentVO> list(int C_board_counsel) throws Exception {
		return sql.selectList(namespace + ".commentList", C_board_counsel);
	}

	@Override
	public void write(CommentVO vo) throws Exception {
		sql.insert(namespace + ".commentWrite", vo);
		
	}

	@Override
	public void update(CommentVO vo) throws Exception {
		sql.update(namespace + ".commentUpdate", vo);
		
	}

	@Override
	public void delete(CommentVO vo) throws Exception {
		sql.delete(namespace + ".commentDelete", vo);
		
	}

	@Override
	public CommentVO commentSelect(int C_seq_counsel) throws Exception {
		
		return sql.selectOne(namespace + ".commentSelect", C_seq_counsel);
	}

	@Override
	public void delete2(int C_board_counsel) throws Exception {
	
		sql.delete(namespace+".commentDeleteAll", C_board_counsel);
	}

	

	

}
