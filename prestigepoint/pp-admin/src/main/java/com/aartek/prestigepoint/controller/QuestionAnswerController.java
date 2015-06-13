package com.aartek.prestigepoint.controller;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
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
import com.aartek.prestigepoint.validator.QuestionAndAnswerValidator;

@Controller
public class QuestionAnswerController {

	@SuppressWarnings("unused")
	private static final Logger log = Logger.getLogger(QuestionAnswerController.class);

	@Autowired
	private QuestionAnswerService questionAnswerService;

	@Autowired
	private QuestionAndAnswerValidator questionAndAnswerValidator;

	/**
	 * show question answer page
	 * 
	 * @param map
	 * @param model
	 * @return
	 */
	@RequestMapping("/questionAndAnswer")
	public String showQuestionPage(Map<String, Object> map, Model model, @RequestParam(required = false) String message) {
		List<Subject> subjects = questionAnswerService.getAllSubjectName();
		model.addAttribute("subjectList", subjects);
		map.put("QuestionAnswer", new QuestionAnswer());
		model.addAttribute("message", message);
		return "questionAndAnswer";
	}

	@RequestMapping(value = "/questionAction", method = { RequestMethod.GET, RequestMethod.POST }) //action should be saveQuestionAnwser
	public String addQuestionAnswer(@ModelAttribute("QuestionAnswer") QuestionAnswer questionAnswer,//change method name
			BindingResult result, ModelMap model) {
		boolean status = false;
		List<Subject> subjects = questionAnswerService.getAllSubjectName();
		questionAndAnswerValidator.validate(questionAnswer, result);
		if (result.hasErrors()) {
			model.addAttribute("subjectList", subjects);
			return "questionAndAnswer";
		}
		status = questionAnswerService.addQuestionAndAnswer(questionAnswer);//method name should be saveQuestionAndAnswer
		if (status) {
			model.addAttribute("message", "Your question answer add successfully");

		} else {
			model.addAttribute("message", "Please try again");
		}
		return "redirect:/questionAndAnswer.do";//remove unsed spaces
	}

	@RequestMapping("/differenceQuestion")//change action name should be meaning ful
	public String showDiffernceQuestionPage(Map<String, Object> map, Model model,
			@RequestParam(required = false) String message) {
		List<Subject> subjects = questionAnswerService.getAllSubjectName();
		model.addAttribute("subjectList", subjects);
		map.put("QuestionAnswer", new QuestionAnswer());
		model.addAttribute("message", message);
		return "differenceQuestion";
	}

	@RequestMapping(value = "/differenceQuestionAction", method = { RequestMethod.GET, RequestMethod.POST })//Action name should be meaning full , please change action name
	public String addDifferenceQuestion(@ModelAttribute("QuestionAnswer") QuestionAnswer questionAnswer,
			BindingResult result, ModelMap model) {
		boolean status = false;
		List<Subject> subjects = questionAnswerService.getAllSubjectName();
		questionAndAnswerValidator.validate(questionAnswer, result);
		if (result.hasErrors()) {
			model.addAttribute("subjectList", subjects);
			return "differenceQuestion";
		}
		status = questionAnswerService.addQuestionAndAnswer(questionAnswer);//chnage method name , method should be saveDefferenceQuestionAnswer
		if (status) {
			model.addAttribute("message", "Your question answer add successfully");

		} else {
			model.addAttribute("message", "Please try again");
		}
		return "redirect:/differenceQuestion.do"; //remove white spaces
	}
}