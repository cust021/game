package com.game.mapper;

import java.util.List;

import com.game.vo.BoardInfoVO;

public interface BoardInfoMapper {

	List<BoardInfoVO> selectBoardInfoList(BoardInfoVO board);
	BoardInfoVO selectBoardInfo(String board);
	int insertBoardInfo(BoardInfoVO board);
	int updateBoardInfo(BoardInfoVO board);
	int deleteBoardInfo(BoardInfoVO board);
}
