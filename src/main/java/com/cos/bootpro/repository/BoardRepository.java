package com.cos.bootpro.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.bootpro.model.Board;
import com.cos.bootpro.model.User;

public interface BoardRepository extends JpaRepository<Board, Integer> {
	
}
