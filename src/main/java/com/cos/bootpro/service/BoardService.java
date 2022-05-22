package com.cos.bootpro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.bootpro.model.Board;
import com.cos.bootpro.model.RoleType;
import com.cos.bootpro.model.User;
import com.cos.bootpro.repository.BoardRepository;
import com.cos.bootpro.repository.UserRepository;

@Service
public class BoardService {
	
	@Autowired
	private BoardRepository boardRepository;

	@Transactional
	public void boardSaveService(Board board, User user) {
		board.setCount(0);
		board.setRecommend(0);
		board.setUser(user);
		boardRepository.save(board);
	}
	
	public List<Board> boardListService() {
		return boardRepository.findAll();
	}
}