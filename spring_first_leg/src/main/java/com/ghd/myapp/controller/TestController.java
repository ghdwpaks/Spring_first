package com.ghd.myapp.controller;
import java.util.List;
import com.ghd.myapp.model.aws.dto.portfolio;
import com.ghd.myapp.service.TestService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class TestController {
	
	private final TestService testService;
	
	@GetMapping("/test")
	public List<portfolio> test() {
		return testService.getAllDataList();
	}
}
