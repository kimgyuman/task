package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.board.dao.BoardDAO;
import com.board.dao.CommentDAO;
import com.board.domain.BoardVO;
import com.board.domain.CommentVO;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service("quartzService")
@AllArgsConstructor
@Slf4j
public class QuartzServiceImpl implements QuartzService{

	@Inject
	private BoardDAO dao;
	private BoardService boardService;
	private CommentService commentService;
	private CommentDAO Cdao;
	
	
	//5일 지난 게시글 (매일 08:00) 삭제
	@Override
	public void deleteBoard() throws Exception {
		dao.expiredBoard();
		log.warn("게시글 삭제 완료");
		
	}

	
	//비속어 마스킹처리 (3분마다)
	@Override
	public void boardMasking() throws Exception {
		log.warn("비속어 마스킹 처리 시작");
		List<BoardVO> vo = dao.maskingList();
		//포문에서 리스트의 content, title 값을 뽑아내서 비속어를 **로 변경
		for(BoardVO v: vo) {
			String beforeTitle = v.getTitle_counsel();
			String afterTitle =  beforeTitle.replaceAll("[(말투)(건성)(뻔뻔)(싸가지)(찌질)]", "***");
			String beforeContent = v.getContent_counsel();
			String afterContent = beforeContent.replaceAll("[(말투)(건성)(뻔뻔)(싸가지)(찌질)]", "***");
			
			v.setTitle_counsel(afterTitle);			
			v.setContent_counsel(afterContent);
			
			dao.maskingUpdate(v);			
			}
		log.warn("비속어 마스킹 처리 종료");
	}
		
		
	
	
	
	
	
}
