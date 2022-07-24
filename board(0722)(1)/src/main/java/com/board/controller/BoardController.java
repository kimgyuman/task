package com.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.domain.BoardVO;
import com.board.domain.CommentVO;
import com.board.service.BoardService;
import com.board.service.CommentService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Inject
	BoardService service;
	
	@Inject
	private CommentService commentService;
	
	//목록보기
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		 
		List<BoardVO> list = null;
		list = service.list();

		model.addAttribute("list", list);
  
		
	
	 }
	 
	//게시글 작성(GET)
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWrite() throws Exception {
		
	 }
	
	//게시글 작성(POST)
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWrite(BoardVO vo) throws Exception {
		System.out.println(vo.toString());
		service.write(vo);
		
		return "redirect:/board/list";		
	 }
	
	//게시글 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView(@RequestParam("seq_counsel") int seq_counsel, Model model) throws Exception {

		
		BoardVO vo = service.view(seq_counsel);
		model.addAttribute("view",vo);
		
		//댓글 조회
		List<CommentVO> comment = null;
		comment = commentService.list(seq_counsel);
		model.addAttribute("comment", comment);
	}
	
	//게시글 수정 (GET)
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void getUpdate(@RequestParam("seq_counsel") int seq_counsel, Model model) throws Exception{
		
		BoardVO vo = service.view(seq_counsel);
		
		model.addAttribute("updateView",vo);
		
	}
	 
	//게시글 수정 (POST)
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String postUpdate(BoardVO vo) throws Exception {

	 service.update(vo);
	   
	 return "redirect:/board/view?seq_counsel=" + vo.getSeq_counsel();
	}
	
	//게시글 삭제 
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String getDelete(@RequestParam("seq_counsel") int seq_counsel) throws Exception {
	  
	 service.delete(seq_counsel);  

	 return "redirect:/board/list";
	}
	 
	 
}
