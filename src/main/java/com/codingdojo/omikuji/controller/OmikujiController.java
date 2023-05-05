package com.codingdojo.omikuji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class OmikujiController {
	
	@RequestMapping("/")
	public String renderOmikujiForm() {
				
		return "omikuji.jsp";
	}
	
    @PostMapping("/submitForm")
    public String submitOmikujiForm(@RequestParam("number") int number, 
                                    @RequestParam("city") String city,
                                    @RequestParam("person") String person, 
                                    @RequestParam("hobby") String hobby, 
                                    @RequestParam("livingThing") String livingThing,
                                    @RequestParam("message") String message,
                                    HttpSession session) {
    	
    	String result = String.format("In <span style=\"font-weight: bold;\">%s</span> years you will live in <span style=\"font-weight: bold;\">%s</span> with <span style=\"font-weight: bold;\">%s</span> as your roommate, <span style=\"font-weight: bold;\">%s</span>. The next time you see a <span style=\"font-weight: bold;\">%s</span>, you will have good luck. Also, <span style=\"font-weight: bold;\">%s</span>.", number, city, person, hobby, livingThing, message);
        session.setAttribute("result", result);
 

        return "redirect:/omikujiResult";
    }

	@RequestMapping("/omikujiResult")
    public String showOmikujiResult(HttpSession session) {

    	session.getAttribute("result");
    	
        return "fortune.jsp";
    }
}