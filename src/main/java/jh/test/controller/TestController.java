package jh.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jh.test.entity.Board;
import jh.test.entity.Search;
import jh.test.service.BoardService;

@Controller
public class TestController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping("/")
	public String main(Model model
			,@RequestParam(required=false,defaultValue="1")int page
			,@RequestParam(required=false,defaultValue="1")int range
			,@RequestParam(required=false,defaultValue="resturantName")String searchType
			,@RequestParam(required=false)String keyword
			,@ModelAttribute("search")Search search)  throws Exception{
		
		//검색
		model.addAttribute("search", search);
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		Long listCnt = boardService.getListCnt(search);
		
		//검색 후 페이지
		search.pageInfo(page, range, listCnt);
		
		//페이징
		model.addAttribute("pagination", search);
		model.addAttribute("keyword", keyword);
		
		List<Board> list = boardService.getLists(search);
		model.addAttribute("list", list);
		model.addAttribute("listCnt", listCnt);
		long idx = 1;
		Board vo = boardService.tests(idx);
		System.out.println(vo +"@@@@");
		return "index";
	}
}
