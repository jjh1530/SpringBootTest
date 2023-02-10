package jh.test.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	
	@GetMapping("/write")	
	public String write() {
		return "Board/write";
	}
	
	@PostMapping("/write")
	public String write(Board vo) throws Exception {
		//boardService.write(vo);
		
		return "redirect:/";
	}
	
	@GetMapping("/delete")
	public String delete(Long idx) {
		
		boardService.delete(idx);
		
		return "redirect:/";
	}
	
	@GetMapping("/modify")
	public String modify(Long idx,Model model) {
		Board vo = boardService.detail(idx);
		model.addAttribute("vo", vo);
		return "Board/modify";
	}
	
	@PostMapping("/modify")
	public String modify(Board vo) {
		boardService.modify(vo);
		return "redirect:/";
	}
	
}
