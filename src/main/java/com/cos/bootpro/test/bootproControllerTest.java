package com.cos.bootpro.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class bootproControllerTest {
	
	@GetMapping("/test/hello")
	public String hello() {
		return "<h1>daramG good~</h1>";
	}
}