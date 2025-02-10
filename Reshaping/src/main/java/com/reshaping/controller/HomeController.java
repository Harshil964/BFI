package com.reshaping.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.reshaping.dao.ReDao;
import com.reshaping.entity.Beggar;
import com.reshaping.entity.LoginUser;
import com.reshaping.entity.User;
import com.reshaping.service.UserServiceImpl;
import com.reshaping.service.userService;

@Controller
@SessionAttributes("user")
public class HomeController {

	@Autowired(required=true)
	 private userService userService;
	
	//Mapping to open home page
	@RequestMapping("/Home")
	public String home()
	{
		return "Home";
	}
	
	//Mapping to open login page
	@RequestMapping("/view/login")
	public String login()
	{
		return "login";
	}
	
	//Mapping that is responsible  for login task
	@RequestMapping(path="/view/loginOp", method=RequestMethod.POST)
	public ModelAndView loginOp(@ModelAttribute LoginUser loginUser)
	{
		
		ModelAndView mav = null;
		User user = userService.loginUser(loginUser);
		if(null != user)
			
		{
			mav = new ModelAndView();
			mav.addObject("name",user.getName());
			mav.addObject("email",user.getEmail());
			//mav.addObject("sdf", user.);)
			mav.setViewName("AfterLogin");
			System.out.println("Login Successfully");
		}
		else {
			mav = new ModelAndView("login");
			
			mav.addObject("message","userName and passs is not correct!!");
			mav.setViewName("login");
		}
		return mav;
	}
	//Mapping for Successfully
	@RequestMapping("/view/SuccessFully")
	public String success()
	{
		return"SuccessFully";
	}
	//Mapping to open registration page
	@RequestMapping("/view/register")
	public String register()
	{
		return "register";
	}
	
	//Mapping that is responsible for registration Task
	@RequestMapping(path="/view/registerOp", method=RequestMethod.POST)
	public String registerUser(@ModelAttribute("User") User user)
	{
		System.out.println(user);
		userService.register(user);
		//return "/view/login";
		return "redirect:/view/login";
	}
	
	@RequestMapping("/view/forgetPass")
	public String forgetPass()
	{
		return "forgetPass";
	}
	//Mapping for AfterLogin page
	@RequestMapping("/view/AfterLogin")
	public String afterLogin()
	{
		return"AfterLogin";
	}
	
	//Mapping for registerBeggar Page
	@RequestMapping("/view/registerBeggar")
	public String registerB()
	{
		return"registerBeggar";
	}
	//Mapping for registration of beggar
	@RequestMapping(path="/view/registerBeg",method=RequestMethod.POST)
	public String registerBeggar(@ModelAttribute Beggar beg)
	{
		userService.registerBeggar(beg);
		System.out.println(beg);
		return"SuccessFully";
	}
	
	//Mapping for Dashboard page
//	 @RequestMapping("/view/dashboard")
//	    public String getAllUsers(Model model) {
//		 Beggar beg = new Beggar();
//	        List<Beggar> beggars = userService.getdata(beg); // Get all users
//	        model.addAttribute("beggars", beggars); // Add the list to the model
//	        return "dashboard"; // Return the view name
//	    }
	@RequestMapping("/view/dashboard")
	public ModelAndView dashboard(@ModelAttribute LoginUser loginUser)
	{
		ModelAndView mav = new ModelAndView();
		User user = new User();
		Beggar beggar= userService.getdata(loginUser);
		    mav.addObject("email",beggar.getEmail());
		    mav.addObject("begid", beggar.getBegId());
			mav.addObject("beggarCount", beggar.getBeggarCount());
			mav.addObject("begname", beggar.getBegName());
			mav.addObject("beglog", beggar.getLongitude());
			mav.addObject("beglat", beggar.getLatitude());
			mav.addObject("status",beggar.getStatus());
		mav.setViewName("dashboard");
        return mav;
	}
	
	
	//Mapping for opening Profile Page
	@RequestMapping("/view/profile")
	public String profile()
	{
		return"profile";
	}
	
	//Mapping for Updating profile
	@RequestMapping(path="/view/profile",method = RequestMethod.POST)
     public ModelAndView UpdateProfile(@ModelAttribute LoginUser loginUser)
     {
		ModelAndView mav = new ModelAndView();
		User user = userService.updateUser(loginUser);
		mav.addObject("name",user.getName());
		mav.addObject("email",user.getEmail());
		mav.addObject("mobile",user.getMobile());
		mav.addObject("password",user.getPassword());
		mav.addObject("gender",user.getGender());
		mav.setViewName("profile");
		return mav;
     }
	
	
	//Mapping for opening Admin page
	@RequestMapping("/view/Admin")
	public ModelAndView adminPage(LoginUser loginUser)
	{
		ModelAndView mav = new ModelAndView();
	    User user = userService.getAlluserData(loginUser);
	    Beggar beggar = userService.getDataForAdminPage(loginUser);
	    //User data
	    mav.addObject("username",user.getName());
	    mav.addObject("useremail",user.getEmail());
	    mav.addObject("usermobile",user.getMobile());
	    mav.addObject("usergender",user.getGender());
	    //Beggar Data
	    mav.addObject("begname",beggar.getBegName());
	    mav.addObject("beglat",beggar.getLatitude());
	    mav.addObject("beglog",beggar.getLongitude());
	    mav.addObject("status",beggar.getStatus());
	    
	    
	    
	    mav.setViewName("Admin");
		return mav;
	}
}
