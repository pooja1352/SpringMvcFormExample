package net.codejava.spring.controller;



import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.codejava.spring.model.LoginDetail;


@Controller
@RequestMapping(value = "/login")
public class Login {
	
	@RequestMapping(method = RequestMethod.POST)
	public String processLogin(@ModelAttribute("loginForm") LoginDetail logindetail,Map<String, Object> model) throws IOException {
		System.out.println("username: " + logindetail.getUname());
		System.out.println("password: " + logindetail.getPwd());
			String uname=logindetail.getUname();
			StringBuffer sb1=new StringBuffer();
		
			String password=logindetail.getPwd();
			//StringBuffer sb2=new StringBuffer(password);  
			try (BufferedReader br = new BufferedReader(new FileReader("dataFile.txt"))) {
			    String line;
			    while ((line = br.readLine()) != null) {
			    	sb1.append(line);
//			       if(line.contentEquals(sb1) && line.contentEquals(sb2))
//			       {
//			    	  System.out.println("correct"); 
//			       }
//			       else
//			       {
//			    	   System.out.println("not matching"); 
//			       }
//			       
			    }
			    
			    if(sb1.toString().contains(uname) && sb1.toString().contains(password)){
			    	return "Login";
			    } else {
			    	return "Error";
			    }
			}
			
			//return "Login";
	}

}
