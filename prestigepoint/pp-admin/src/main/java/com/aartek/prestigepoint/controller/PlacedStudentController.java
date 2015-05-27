package com.aartek.prestigepoint.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aartek.prestigepoint.model.AddPlacedStudent;
import com.aartek.prestigepoint.service.PlacedStudentService;
import com.aartek.prestigepoint.util.IConstant;

@Controller
public class PlacedStudentController {
	@Autowired
	private PlacedStudentService placedStudentservice;

	/*
	 * firstName,lastName is used for print the value in textfield and it is
	 * define in head part of jsp.
	 */
	@RequestMapping("/addPlacedStudent")
	private String addStudentInformation(Map<String, Object> map, ModelMap model,
			@RequestParam(required = false) String firstName, String lastName, Integer registrationId, String message) {
		map.put("AddPlacedStudent", new AddPlacedStudent());
		model.addAttribute("registrationId", registrationId);
		model.addAttribute("fname", firstName);
		model.addAttribute("lname", lastName);
		model.addAttribute("message", message);
		return "addPlacedStudent";
	}

	/*
	 * addstudent method is used for save data.
	 */
	@RequestMapping(value = "/addPlacedStudentAction.do", method = { RequestMethod.GET, RequestMethod.POST })
	private String addStudentInformation(@ModelAttribute("AddPlacedStudent") AddPlacedStudent addPlacedStudent,
			ModelMap model) {
		boolean status = true;
		status = placedStudentservice.addStudentInformation(addPlacedStudent);
		if (status) {
			model.addAttribute("message", IConstant.PLACED_SUCCESS_MESSAGE);
		} else {
			model.addAttribute("message", IConstant.PLASED_FAILURE_MESSAGE);
		}

		return "redirect:/registration.do";
	}

	@RequestMapping("/viewPlacedStudent")
	private String viewAllPlacedStudent(@ModelAttribute("AddPlacedStudent") AddPlacedStudent addPlacedStudent,
			Map<String, Object> map) {
		map.put("AddPlacedStudent", new AddPlacedStudent());
		return "viewPlacedStudent";
	}

	/*
	 * getSearchType method is used for show the list and check the condition if
	 * user select the all check box so text field is not work or text field
	 * work so check box not work.
	 * 
	 * allPlacedStudent method is used for fetch the information of user and
	 * list attribute is used for show the whole information in jsp.
	 */

	@RequestMapping("/viewPlacedStudentAction")
	private String viewAllPlacedStudent(@ModelAttribute("AddPlacedStudent") AddPlacedStudent addPlacedStudent,
			ModelMap model) {

		if (addPlacedStudent.getSearchType() != null) {
			List<AddPlacedStudent> placedStudentList = placedStudentservice.viewAllPlacedStudent();
			model.addAttribute("placedStudentList", placedStudentList);
			return "viewPlacedStudent";
		}
		if (addPlacedStudent.getFromDate() != null) {
			List<AddPlacedStudent> placedStudentList = placedStudentservice.generatePlacedStudentReportMonthlyWise(
					addPlacedStudent.getFromDate(), addPlacedStudent.getToDate());
			model.addAttribute("placedStudentList", placedStudentList);

			return "viewPlacedStudent";
		}

		return "redirect:/addPlacedStudent.do";
	}

	/*
	 * editstudent method is used for update the information of user.
	 */
	@RequestMapping(value = "/updatePlacedStudentInformation")
	public String updatePlacedStudentInformation(@ModelAttribute("AddPlacedStudent") AddPlacedStudent addPlacedStudent,
			ModelMap model, Map<String, Object> map, @RequestParam(required = false) Integer studentId) {
		addPlacedStudent = placedStudentservice.updatePlacedStudentInformation(studentId);
		map.put("AddPlacedStudent", addPlacedStudent);
		return "addPlacedStudent";

	}

	/*
	 * delete method is used for delete the information of user.
	 */
	@RequestMapping(value = "/deletePlacedStudentInformation", method = { RequestMethod.GET, RequestMethod.POST })
	public String deletePlacedStudentInformation(@RequestParam(required = false) Integer studentId) {
		placedStudentservice.deletePlacedStudentInformation(studentId);

		return "addPlacedStudent";
	}

}
