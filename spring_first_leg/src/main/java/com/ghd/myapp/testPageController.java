package com.ghd.myapp;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testPageController {
	
	@GetMapping("/TestPage")
	public String TestPage() {
		System.out.println("TestPage 에 진입을 시도하셨습니다.");
		return "ops/TestPage";
	}
	
	
}
