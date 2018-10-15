package com.nss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.nss.entity.UserInfo;
import com.nss.service.impl.UserServiceImpl;

@Controller
public class RegisterController {

	@Autowired
	private UserServiceImpl userServiceImpl;

	@RequestMapping(value = "register")
	public String register(UserInfo userInfo) {
		String view = "register";
		if (userServiceImpl.registerUser(userInfo)) {
			view = "login";
		}
		return view;
	}
}
