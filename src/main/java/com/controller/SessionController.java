package com.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.LoginBean;
import com.bean.UserBean;
import com.dao.UserDao;

@Controller
public class SessionController {
	
	@Autowired
	UserDao userDao;
	@GetMapping("/signup")
	public String signup(Model model) {
		model.addAttribute("user",new UserBean());
		return "Signup";
		
	}
	
	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("loginBean",new LoginBean());
		return "Login";
		
	}
	
	@PostMapping("/authenticate")
	public String authenticate(@ModelAttribute("loginBean") @Valid LoginBean loginBean,BindingResult result,Model model,HttpSession session) {
		
		model.addAttribute("loginBean",loginBean);
		if(result.hasErrors()) {
			return "Login";
			
		}
		else {
			UserBean user=userDao.authenticate(loginBean.getEmail(),loginBean.getPassword());
			if(user==null) {
				model.addAttribute("msg","Invalid Credentials");
				return "Login";
			}
			else {
				session.setAttribute("user", user);
				if(user.getRoleId()==1) {
					return "AdminHome";
				}
				else if(user.getRoleId()==2) {
					return "Home";
				}
				else {
					model.addAttribute("msg","Invalid");
					return "Login";
				}
				
			}	
		}
	}
	
	@PostMapping("/saveuser")
	public String saveUser(UserBean user,Model model) {
		user.setRoleId(UserBean.Roles.USER.roleId);
		int userId=userDao.insertUser(user);
		model.addAttribute("user",user);
		if(userId==-1) {
			return "Signup";
		}
		else {
			return "redirect:/login";	
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
		
	}
}
