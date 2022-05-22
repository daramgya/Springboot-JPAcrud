package com.cos.bootpro.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.bootpro.dto.ResponseDto;
import com.cos.bootpro.model.RoleType;
import com.cos.bootpro.model.User;
import com.cos.bootpro.service.UserService;

@RestController
public class UserApiController {
	
	@Autowired
	private UserService userservice;

	@PostMapping("/auth/joinProc")
	public ResponseDto<Integer> save(@RequestBody User user) {
		System.out.println("UserApiController에서 save 호출됨");
		
		userservice.signUpService(user);	
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);

	}

}
