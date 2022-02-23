package com.ghd.myapp.service;


import java.util.List;
import com.ghd.myapp.model.aws.dto.portfolio;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public interface TestService {
	public List<portfolio> getAllDataList();
}
