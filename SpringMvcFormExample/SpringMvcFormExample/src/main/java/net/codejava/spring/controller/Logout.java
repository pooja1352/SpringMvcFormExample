package net.codejava.spring.controller;

import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.codejava.spring.model.LoginDetail;

@Controller
@RequestMapping(value = "/logout")
public class Logout {
	@RequestMapping(method = RequestMethod.GET)
	public String viewLogout(Map<String, Object> model) {
		LoginDetail loginForm = new LoginDetail();		
		model.put("loginForm", loginForm);
		return "redirectLogin";
	}

}
