package com.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

 @Inject
 private SqlSession sql;
 private static String namespace = "com.board.mappers.board";

	@Override
	public List<BoardVO> list() throws Exception {
		
		return sql.selectList(namespace + ".list");
	}
	
	@Override
	public void write(BoardVO vo) throws Exception {
		
		sql.insert(namespace + ".write",vo);
		
	}

	@Override
	public BoardVO view(int seq_counsel) throws Exception {

		return sql.selectOne(namespace + ".view", seq_counsel);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
	
		sql.update(namespace + ".update", vo);
		
	}

	@Override
	public void delete(int seq_counsel) throws Exception {
		sql.delete(namespace + ".delete", seq_counsel); 
		
	}

	@Override
	public void expiredBoard() throws Exception {
		sql.delete(namespace + ".expiredBoard");
		
	}

	@Override
	public List<BoardVO> maskingList() throws Exception {
		
		return sql.selectList(namespace+".selectMasking");
	}

	@Override
	public void maskingUpdate(BoardVO vo) throws Exception {
		sql.update(namespace + ".updateMasking", vo);
		
	}

	

}