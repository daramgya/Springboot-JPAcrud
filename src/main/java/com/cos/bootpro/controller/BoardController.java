package com.cos.bootpro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cos.bootpro.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	// http://localhost:9070/
	@GetMapping({"", "/"})
	public String index(Model model) {
		model.addAttribute("boards", boardService.boardListService());
		return "index";
		// prefix: /WEB-INF/views/
		// suffix: .jsp
	}
	
	@GetMapping("/board/saveForm")
	public String saveForm() {
		return "board/saveForm";
	}

}
