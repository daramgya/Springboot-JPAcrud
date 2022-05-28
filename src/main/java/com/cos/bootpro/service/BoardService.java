package com.cos.bootpro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
	
	// 글 목록 서비스
	@Transactional(readOnly = true)
	public Page<Board> boardListService(Pageable pageable) {
		return boardRepository.findAll(pageable);
	}
	
	// 글 상세보기 서비스
	@Transactional(readOnly = true)
	public Board boardDetailService(int id) {
		return boardRepository.findById(id)
				.orElseThrow(()->{
					return new IllegalArgumentException("글 상세보기 실패 : 아이디를 찾을 수 없습니다.");
				});
	}
	
	// 글 삭제하기 서비스
	@Transactional
	public void boardDeleteService(int id) {
		boardRepository.deleteById(id);
	}
	
	@Transactional
	public void boardUpdateService(int id, Board requestBoard) {
		Board board = boardRepository.findById(id)
				.orElseThrow(()->{
					return new IllegalArgumentException("글 찾기 실패 : 아이디를 찾을 수 없습니다.");
				});
		board.setTitle(requestBoard.getTitle());
		board.setContent(requestBoard.getContent());
	}
	
}