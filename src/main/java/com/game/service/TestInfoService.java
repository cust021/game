package com.game.service;

import java.util.List;
import java.util.Map;

import com.game.vo.TestInfoVO;

public interface TestInfoService {
	List<TestInfoVO> selectTestInfoList(TestInfoVO testInfo);
	Map<String,String> selectTestInfo(String tiNum);
	int insertTestInfo(Map<String,String> testInfo);
	int updateTestInfo(Map<String,String> testInfo);
	int deleteTestInfo(String tiNum);
	Map<String,String> login(String testId);
}