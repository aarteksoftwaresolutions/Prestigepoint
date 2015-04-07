package com.aartek.prestigepoint.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aartek.prestigepoint.model.Enquiry;
import com.aartek.prestigepoint.model.PhotoInFooter;
import com.aartek.prestigepoint.model.Subject;
import com.aartek.prestigepoint.service.ContactService;
import com.aartek.prestigepoint.service.FooterPhotoService;
import com.aartek.prestigepoint.service.QuestionAnswerService;
import com.aartek.prestigepoint.util.IConstant;
import com.aartek.prestigepoint.validator.ContactUsValidator;

@Controller
public class ContactController {
	@Autowired
	private ContactService contactService;

	@Autowired
	private ContactUsValidator contactUsValidator;

	@Autowired
	private QuestionAnswerService questionAnswerService;
	
	@Autowired
	private FooterPhotoService footerPhotoService ;
	

	@RequestMapping("/contactUs")
	public String showcontactUsPage(Map<String, Object> map, Model model, @RequestParam(required = false) String message) {
		model.addAttribute("message", message);
		List<Subject> subjects = null;
		
		subjects = questionAnswerService.getAllSubjectName();
		List<PhotoInFooter> listOfSelectedStudent=footerPhotoService.listOfSelectedStudent();
		model.addAttribute("allStudentDetail", listOfSelectedStudent);
		model.addAttribute("subjectList", subjects);
		map.put("Enquiry", new Enquiry());
		return "contactUs";
	}

	@RequestMapping(value = "/contactAction", method = RequestMethod.POST)
	public String feedbackInfo(@ModelAttribute("Enquiry") Enquiry enquiry, BindingResult result, ModelMap model,
			Map<String, Object> map) {
		boolean status = false;
		contactUsValidator.validate(enquiry, result);
		if (result.hasErrors()) {
			return "contactUs";
		}
		model.put("Enquiry", new Enquiry());
		status = contactService.addContactMessage(enquiry);
		if (status) {
			model.addAttribute("message", IConstant.CONTACTUS_SUCCESS_MESSAGE);
		} else {
			model.addAttribute("message", IConstant.CONTACTUS_FAILURE_MESSAGE);
		}
		return "redirect:/contactUs.do";
	}

}
