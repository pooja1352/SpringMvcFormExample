package net.codejava.spring.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import net.codejava.spring.model.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/register")
public class RegisterController {

	@RequestMapping(method = RequestMethod.GET)
	public String viewRegistration(Map<String, Object> model) {
		User userForm = new User();		
		model.put("userForm", userForm);
		
		List<String> professionList = new ArrayList<>();
		professionList.add("Developer");
		professionList.add("Designer");
		professionList.add("IT Manager");
		model.put("professionList", professionList);
		
		return "Registration";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String processRegistration(@ModelAttribute("userForm") User user, 
			Map<String, Object> model) throws IOException {
		
		// implement your own registration logic here...
		
		// for testing purpose:
		System.out.println("username: " + user.getUsername());
		System.out.println("password: " + user.getPassword());
		System.out.println("email: " + user.getEmail());
		System.out.println("birth date: " + user.getBirthDate());
		System.out.println("profession: " + user.getProfession());
		String path=System.getProperty("user.dir");
		System.out.println(path);
		String username = user.getUsername();
        String password = user.getPassword();
        Date birthday = user.getBirthDate();
        String email = user.getEmail();
        String profession=user.getProfession();
        
        File myFile = new File("dataFile.txt");
        if (myFile.createNewFile()){
            System.out.println("File is created!");
           }else{
            System.out.println("File already exists.");
           }
        
        FileWriter filewriter = new FileWriter(myFile, true);
        filewriter.write("username:" + username+"\n");
        filewriter.write("password:" + password+"\n");
        filewriter.write("birthday:" + birthday+"\n");
        filewriter.write("email:" + email+"\n");
        filewriter.write("profession:" + profession+"\n");
        filewriter.close();
		
		return "RegistrationSuccess";
	}
}
