package com.ghd.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("루트 디렉터리에 접속을 시도하셨습니다.");
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}

    @GetMapping("/ops")
	public String ops(Locale locale, Model model) {
		System.out.println("ops 에 접속을 시도하셨습니다.");
		
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ops/ops_main";
	}
	
    @GetMapping("/tui")
	public String tui(Locale locale, Model model) {
		System.out.println("tui 에 접속을 시도하셨습니다.");
		
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ops/tui_editor";
	}
    
    @GetMapping("/tui_edit")
	public String tui_edit(Locale locale, Model model) {
		System.out.println("tui edit 에 접속을 시도하셨습니다.");
		
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main";
	}
    
    @GetMapping("/tui_min")
	public String tui_min(Locale locale, Model model) {
		System.out.println("tui min 에 접속을 시도하셨습니다.");
		
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ops/tui_min";
	}
    
    @GetMapping("/ajax")
	public String ajax(Locale locale, Model model) {
		System.out.println("ajax 에 접속을 시도하셨습니다.");
		
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ops/ajax_test";
	}
    
    @ResponseBody
    @GetMapping("/ajaxedit")
	public String ajax_edit(@RequestParam(value="params") String member) {
		System.out.println("ajax edit 에 접속을 시도하셨습니다.");
		System.out.println("Member = "+member);
		
		
		
		return "home";
	}
    
    
    
    //@RequestMapping(value="/AajxEditPost")
    @PostMapping("/AajxEditPost")
	public @ResponseBody String AjaxEditPost(@RequestBody String user) {
		System.out.println("ajax edit post 에 접속을 시도하셨습니다.");
		System.out.println("Member : "+user);
		
		
		return "/";
	}
    
	
}
