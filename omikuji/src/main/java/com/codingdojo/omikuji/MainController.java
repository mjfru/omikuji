package com.codingdojo.omikuji;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	@GetMapping("/newForm")
	public String newForm() {
		return "omikuji.jsp";
	}
	@GetMapping("/show")
	public String show() {
		return "show.jsp";
	}
	@PostMapping(value="/create")
	public String create(
		@RequestParam(value = "years", required=false) Integer years,
		@RequestParam(value = "city") String city,
		@RequestParam(value = "person") String person,
		@RequestParam(value = "activity") String activity,
		@RequestParam(value = "thing") String thing,
		@RequestParam(value = "message") String message,
		HttpSession session) {
		if (years == null) {
	        return "redirect:/newForm";
	    }
			session.setAttribute("years", years);
			session.setAttribute("city", city);
			session.setAttribute("person", person);
			session.setAttribute("activity", activity);
			session.setAttribute("thing", thing);
			session.setAttribute("message", message);
			return "redirect:/show";
	}
}
