package com.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.domain.CommentVO;
import com.board.service.CommentService;

@Controller
@RequestMapping("/comment/*")
public class CommentController {
	
	@Inject
	private CommentService service;
	
	//댓글 조회
	
	// 댓글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String posttWrite(CommentVO vo) throws Exception {
		
		
		
		service.write(vo);
		
		return "redirect:/board/view?seq_counsel=" + vo.getC_board_counsel();
	}
	
	// 댓글 수정 GET
	@RequestMapping(value = "/commentUpdate", method = RequestMethod.GET)
	public void getCommentUpdate(@RequestParam("C_seq_counsel") int C_seq_counsel,
	      Model model) throws Exception {
	 
	 
	 CommentVO vo = null;
	 
	 vo = service.commentSelect(C_seq_counsel);
	 
	 model.addAttribute("selectComment", vo);
	 
	}
	
	// 댓글 수정 POST
	@RequestMapping(value = "/commentUpdate", method = RequestMethod.POST)
	public String commentUpdate(CommentVO vo) throws Exception {
	
	 
	 
	 service.update(vo);
	 
	 
	 return "redirect:/board/view?seq_counsel=" + vo.getC_board_counsel();
	}

	
	
	//댓글 삭제
	@RequestMapping(value="/commentDelete", method= RequestMethod.POST)
	public String commentDelete(CommentVO vo)throws Exception{
		
		service.delete(vo);
		
		
		return "redirect:/board/view?seq_counsel="+vo.getC_board_counsel();
		
	}
	
	@RequestMapping(value = "/commentDelete", method = RequestMethod.GET)
	public void getCommentDelete(@RequestParam("C_seq_counsel") int C_seq_counsel,
	       Model model) throws Exception {
	 
	 
	 CommentVO vo = null;
	 
	 vo = service.commentSelect(C_seq_counsel);
	 
	 model.addAttribute("selectComment", vo);
	 
	}
	

}
