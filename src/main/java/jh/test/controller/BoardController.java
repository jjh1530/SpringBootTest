package jh.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jh.test.entity.Board;
import jh.test.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@GetMapping("/detail")
	public String detail(Long idx,Model model) {
		Board vo = boardService.detail(idx);
		model.addAttribute("vo", vo);
		
		return "Board/detail";
	}
}
