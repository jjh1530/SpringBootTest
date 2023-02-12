package jh.test.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.annotation.MultipartConfig;
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
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)   // 50MB
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
	public String write(Board vo,@RequestParam MultipartFile upFile) throws Exception {
		String uploadPath = "/C:/Users/wogns/git/SpringBootTest/src/main/resources/static/upload";
		//C:\Users\wogns\git\SpringBootTest\src\main\resources
		String originalFilename  = upFile.getOriginalFilename();
		String ext = FilenameUtils.getExtension(originalFilename);
		UUID uuid = UUID.randomUUID();
		String filename = uuid+ "." + ext;
		upFile.transferTo(new File(uploadPath +"/" + filename));
		vo.setBoardfile(filename);
		System.out.println(vo);
		boardService.write(vo);
		
		return "redirect:/";
	}
	
	private String uploadFile(String originalFileName, MultipartFile file) throws Exception {
	    String savedFileName = UUID.randomUUID() + "_" + originalFileName;
	    File targetFile = new File("/C:/upload" + savedFileName);
	    file.transferTo(targetFile);
	    return savedFileName;
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
