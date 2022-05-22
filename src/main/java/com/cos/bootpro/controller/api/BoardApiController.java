package com.cos.bootpro.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.bootpro.config.auth.PrincipalDetail;
import com.cos.bootpro.dto.ResponseDto;
import com.cos.bootpro.model.Board;
import com.cos.bootpro.model.RoleType;
import com.cos.bootpro.model.User;
import com.cos.bootpro.service.BoardService;
import com.cos.bootpro.service.UserService;

@RestController
public class BoardApiController {
	
	@Autowired
	private BoardService boardService;
	
	@PostMapping("/api/board")
	public ResponseDto<Integer> save(@RequestBody Board board, @AuthenticationPrincipal PrincipalDetail principal) {
		boardService.boardSaveService(board, principal.getUser());
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

}
