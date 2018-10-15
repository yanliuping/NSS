package com.nss.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nss.entity.UserInfo;
import com.nss.service.impl.UserServiceImpl;
import com.sun.istack.internal.logging.Logger;

@Controller
public class LoginController {

	@Autowired
	HttpServletRequest request;
	@Autowired
	private UserServiceImpl userServiceImpl;
	Logger logger = Logger.getLogger(this.getClass());

	@RequestMapping(value = "login")
	public String login(UserInfo userInfo) {
		String view = "login";
		if (userServiceImpl.validateUser(userInfo)) {
			view = "index";
			request.getSession().setAttribute("userInfo", userInfo);
		}

		logger.info("User: " + userInfo.getUserName() + " login the system.");
		return view;
	}

	@RequestMapping("test")
	@ResponseBody
	public String testController() {
		return "test";
	}
}
