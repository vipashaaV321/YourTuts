package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bean.UserBean;
import com.dao.UserDao;

@Controller
public class UserController {
	
	@Autowired
	UserDao userDao;
	@GetMapping("/liststudents")
	public String listusers(Model model) {
		
		List<UserBean> students=userDao.getAllStudents();
		model.addAttribute("students",students);
		return "ListUsers";
	}

}
