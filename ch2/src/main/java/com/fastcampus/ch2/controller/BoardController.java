package com.fastcampus.ch2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fastcampus.ch2.entity.Board;
import com.fastcampus.ch2.mapper.BoardMapper;

@Controller
public class BoardController {

	@Autowired
	BoardMapper boardMapper;
	
	@GetMapping("/boardList.do")
	public String boardList(Model model) {
		
		List<Board> list = boardMapper.getLists();
		model.addAttribute("list",list);
		
		list.forEach(board -> System.out.println(board.toString()));
		
		return "boardList";
	}
	
	@GetMapping("/boardForm.do")
	public String boardForm() {
		return "boardForm";
	}
	
	@PostMapping("/boardInsert.do")
	public String boardInsert(Board board) {
		
		int result = boardMapper.insert(board);
		return "redirect:/boardList.do";
	}
	
	@GetMapping("/boardContent.do")
	public String boardContent (@RequestParam("idx") int idx, Model model) {
		boardMapper.updateCount(idx);
		Board board = boardMapper.getContent(idx);
		model.addAttribute("board", board);
		
		return "boardContent";
	}
	
	@GetMapping("/boardDelete.do/{idx}")
	public String boardDelete (@PathVariable("idx") int idx) {
			boardMapper.delete(idx);
		return "redirect:/boardList.do";
	}
	
	@GetMapping("/boardUpdateForm.do/{idx}")
	public String boardUpdateForm (@PathVariable("idx") int idx, Model model) {
		Board board = boardMapper.getContent(idx);
		model.addAttribute("board", board);
		return "boardUpdate";
	}
	
	@PostMapping("/boardUpdate.do")
	public String boardUpdate(Board vo) {
		
		boardMapper.update(vo);
		return "redirect:/boardList.do";
	}
	
}
