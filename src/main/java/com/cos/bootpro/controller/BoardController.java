package com.cos.bootpro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
	
	// http://localhost:9070/
	@GetMapping({"", "/"})
	public String index() {
		return "index";
		// prefix: /WEB-INF/views/
		// suffix: .jsp
	}

}
