package com.fastcampus.ch2.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.fastcampus.ch2.entity.Board;

@Mapper
public interface BoardMapper {

	public List<Board> getLists();
	public int insert(Board board);
	public Board getContent(int idx);
	public int delete(int idx);
}
