package com.ghd.myapp;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testPageController {
	
	@GetMapping("/TestPage")
	public String TestPage() {
		System.out.println("TestPage �� ������ �õ��ϼ̽��ϴ�.");
		return "ops/TestPage";
	}
	
	
}
