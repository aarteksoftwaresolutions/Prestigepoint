package com.aartek.prestigepoint.controller;

import java.util.List;
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
import org.springframework.web.bind.annotation.RequestParam;
import com.aartek.prestigepoint.model.QuestionAnswer;
import com.aartek.prestigepoint.model.Subject;
import com.aartek.prestigepoint.service.QuestionAnswerService;

@Controller
public class QuestionAnswerController {

	@Autowired
	private QuestionAnswerService questionAnswerService;

	/**
	 * show question answer page
	 * 
	 * @param map
	 * @param model
	 * @return
	 */
	@RequestMapping("/questionAndAnswer")
	public String showQuestionPage(Map<String, Object> map, Model model, @RequestParam(required = false) String message) {
		List<Subject> subjects = null;
		subjects = questionAnswerService.getAllSubjectName();
		model.addAttribute("subjectList", subjects);
		map.put("QuestionAnswer", new QuestionAnswer());
		model.addAttribute("message", message);
		return "questionAndAnswer";
	}

	@RequestMapping(value = "/questionAction", method = { RequestMethod.GET, RequestMethod.POST })
	public String addQuestionAnswer(@ModelAttribute("QuestionAnswer") QuestionAnswer questionAnswer,
			BindingResult result, ModelMap model, Map<String, Object> map, HttpServletRequest request) {
		boolean status = false;
		status = questionAnswerService.addQuestionAndAnswer(questionAnswer);
		if (status) {
			model.addAttribute("message", "Your question answer add successfully");

		} else {
			model.addAttribute("message", "Please try again");
		}
		return "redirect:/questionAndAnswer.do";
	}

	@RequestMapping("/differenceQuestion")
	public String showDiffernceQuestionPage(Map<String, Object> map, Model model,
			@RequestParam(required = false) String message) {
		List<Subject> subjects = null;
		subjects = questionAnswerService.getAllSubjectName();
		model.addAttribute("subjectList", subjects);
		map.put("QuestionAnswer", new QuestionAnswer());
		model.addAttribute("message", message);
		return "differenceQuestion";
	}

	@RequestMapping(value = "/differenceQuestionAction", method = { RequestMethod.GET, RequestMethod.POST })
	public String addDifferenceQuestion(@ModelAttribute("QuestionAnswer") QuestionAnswer questionAnswer,
			BindingResult result, ModelMap model, Map<String, Object> map, HttpServletRequest request) {
		boolean status = false;
		status = questionAnswerService.addQuestionAndAnswer(questionAnswer);
		if (status) {
			model.addAttribute("message", "Your question answer add successfully");

		} else {
			model.addAttribute("message", "Please try again");
		}
		return "redirect:/differenceQuestion.do";
	}
}