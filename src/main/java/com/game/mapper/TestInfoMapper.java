package com.game.mapper;

import java.util.List;

import com.game.vo.TestInfoVO;

public interface TestInfoMapper {
	List<TestInfoVO> selectUserInfoList(TestInfoVO test);
	TestInfoVO selectTestInfo(String test);
	int insertTestInfo(TestInfoVO test);
	int updateTestInfo(TestInfoVO test);
	int deleteTestInfo(TestInfoVO test);
}
