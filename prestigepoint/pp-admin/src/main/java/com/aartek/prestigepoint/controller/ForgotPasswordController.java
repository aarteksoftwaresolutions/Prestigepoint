package com.aartek.prestigepoint.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aartek.prestigepoint.model.AdminLogin;
import com.aartek.prestigepoint.service.ForgotPasswordAdminService;
import com.aartek.prestigepoint.util.IConstant;
import com.aartek.prestigepoint.validator.ForgotPasswordValidator;

@Controller
public class ForgotPasswordController {

	@Autowired
	private ForgotPasswordAdminService forgotPasswordService;

	@Autowired
	private ForgotPasswordValidator forgotPasswordValidator;

	@RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
	public String forgotPassword(Map<String, Object> map, Model model) {

		map.put("AdminLogin", new AdminLogin());

		return "forgotPassword";

	}

	@RequestMapping(value = "/forgotPasswordAction", method = RequestMethod.POST)
	public String verify(@ModelAttribute("AdminLogin") AdminLogin adminLogin, BindingResult result, ModelMap model,
			Map<String, Object> map, HttpServletRequest request) {
		boolean status = false;
		forgotPasswordValidator.validate(adminLogin, result);
		if (result.hasErrors()) {
			return "forgotPassword";
		}
		status = forgotPasswordService.getPassword(adminLogin.getEmailId());
		if (status) {
			model.addAttribute("forgotMessage", IConstant.FORGOT_SUCCESS_MESSAGE);
		} else {
			model.addAttribute("forgotMessage", IConstant.FORGOT_FAIL_MESSAGE);
		}
		return "redirect:/login.do";
	}
}