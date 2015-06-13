package com.aartek.prestigepoint.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
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

/**
 * 
 * @author Meenal pathre
 *
 */
@Controller
public class PlacedStudentController {

	@SuppressWarnings("unused")
	private static final Logger log = Logger.getLogger(PlacedStudentController.class);
	@Autowired
	private PlacedStudentService placedStudentservice;

	/*
	 * firstName,lastName is used for print the value in textfield and it is
	 * define in head part of jsp.
	 */
	 //Meenal write meaningfull comment
	@RequestMapping("/addPlacedStudent")//should be placedStudent
	private String addStudentInformation(Map<String, Object> map, ModelMap model,//Method name should be getPlacedStudent
			@RequestParam(required = false) String firstName, String lastName, Integer registrationId, String message) {
		map.put("AddPlacedStudent", new AddPlacedStudent());
		model.addAttribute("registrationId", registrationId);
		model.addAttribute("fname", firstName);
		model.addAttribute("lname", lastName);
		model.addAttribute("message", message);
		return "addPlacedStudent";
	}

	/**
	 * addPlacedStudent method is used for save data.
	 * 
	 * @param addPlacedStudent
	 * @param model
	 * @return
	 */

	@RequestMapping(value = "/addPlacedStudentAction.do", method = { RequestMethod.GET, RequestMethod.POST }) //action should be savePlacedStudent
	private String addStudentInformation(@ModelAttribute("AddPlacedStudent") AddPlacedStudent addPlacedStudent,//change method name
			ModelMap model) {
		boolean status = true;
		status = placedStudentservice.addStudentInformation(addPlacedStudent); //method name should be savePlacedStudent
		if (status) {
			model.addAttribute("message", IConstant.PLACED_SUCCESS_MESSAGE);
		} else {
			model.addAttribute("message", IConstant.PLASED_FAILURE_MESSAGE);
		}

		return "redirect:/registration.do"; //Remove white spaces
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

	@RequestMapping("/viewPlacedStudentAction") //changes action name
	private String viewAllPlacedStudent(@ModelAttribute("AddPlacedStudent") AddPlacedStudent addPlacedStudent,//change mwthod name
			ModelMap model) {

		if (addPlacedStudent.getSearchType() != null) {
			List<AddPlacedStudent> placedStudentList = placedStudentservice.viewAllPlacedStudent(); //method name should be getPlacedStudent
			model.addAttribute("placedStudentList", placedStudentList);
			return "viewPlacedStudent";
		}
		if (addPlacedStudent.getFromDate() != null) {
			List<AddPlacedStudent> placedStudentList = placedStudentservice.generatePlacedStudentReportMonthlyWise(
					addPlacedStudent.getFromDate(), addPlacedStudent.getToDate());
			model.addAttribute("placedStudentList", placedStudentList);

			return "viewPlacedStudent";
		}

		return "redirect:/addPlacedStudent.do";//remove white spaces
	}

	/**
	 * editstudent method is used for update the information of user.
	 * 
	 * @param addPlacedStudent
	 * @param model
	 * @param map
	 * @param studentId
	 * @return
	 */

	@RequestMapping(value = "/updatePlacedStudentInformation")//action should be editPlacedStudent
	public String updatePlacedStudentInformation(@ModelAttribute("AddPlacedStudent") AddPlacedStudent addPlacedStudent, //change method name
			 Map<String, Object> map, @RequestParam(required = false) Integer studentId) {
		addPlacedStudent = placedStudentservice.updatePlacedStudentInformation(studentId);//method name should be editPlacedStudent
		map.put("AddPlacedStudent", addPlacedStudent);
		return "addPlacedStudent";

	}

	/**
	 * delete method is used for delete the information of user.
	 * 
	 * @param studentId
	 * @return
	 */
	@RequestMapping(value = "/deletePlacedStudentInformation", method = { RequestMethod.GET, RequestMethod.POST }) //should be deletePlacedStudent
	public String deletePlacedStudentInformation(@RequestParam(required = false) Integer studentId) {
		placedStudentservice.deletePlacedStudentInformation(studentId);//method should be deletePlacedStudent

		return "redirect:/addPlacedStudent.do"; //remove unsed spaces
	}

}
