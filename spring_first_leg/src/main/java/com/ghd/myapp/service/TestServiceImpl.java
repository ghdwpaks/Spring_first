package com.ghd.myapp.service;
import java.util.List;

import com.ghd.myapp.model.aws.dao.TestMapper;
import com.ghd.myapp.model.aws.dto.portfolio;


import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor
public class TestServiceImpl implements TestService{
	private final TestMapper testMapper = null;
	
	@Override
	public List<portfolio> getAllDataList() {
		return testMapper.getAllDataList();
	}

	
}
