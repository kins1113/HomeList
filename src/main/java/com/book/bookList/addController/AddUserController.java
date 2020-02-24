package com.book.bookList.addController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddUserController {
		
	
	
	@RequestMapping(value="/add/addUser.do")
	public String addUserShow(){
		
		return "add/addUser";
	}
}
