package com.aartek.prestigepoint.controller;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aartek.prestigepoint.model.AdminLogin;
import com.aartek.prestigepoint.model.Emi;
import com.aartek.prestigepoint.model.Registration;
import com.aartek.prestigepoint.service.EmiService;
import com.aartek.prestigepoint.util.IConstant;

/**
 * 
 * @author Dell
 *
 */
@Controller
public class EmiController {

	@SuppressWarnings("unused")
	private static final Logger log = Logger.getLogger(ChallengeController.class); //Please Meenal don't do cut and paste code.Change class name in logger

	@Autowired
	private EmiService emiService;

	/**
	 * Method for view emi details of students.
	 * 
	 * @param emi
	 * @param result
	 * @param model
	 * @param map
	 * @param request
	 * @param registrationId
	 * @return
	 */
	@RequestMapping(value = "/viewDetails", method = { RequestMethod.GET, RequestMethod.POST }) //change viewDetails to getEmiDetails
	public String viewFeesDetails(ModelMap model,@RequestParam(required = false) Integer registrationId, Integer emiId) {//change method name
		List<Emi> emi1 = emiService.getFeesDetails(registrationId);
		List<Registration> registrations = emiService.getRegistrationDetails(registrationId);
		model.addAttribute("registrationList", registrations);
		model.addAttribute("feesDetails", emi1);
		model.addAttribute("registrationId", registrationId);  
		model.addAttribute("emiId", emiId);
		return "emi";
	}

	/**
	 * show a emi page and display student emi details.
	 * 
	 * @param map
	 * @param model
	 * @param registrationId
	 * @param message
	 * @param request
	 * @return
	 */
	@RequestMapping("/emi")
	public String showFee(Map<String, Object> map, Model model, @RequestParam(required = false) Integer registrationId,
			@RequestParam(required = false) String message, @RequestParam(required = false) Integer emiId,
			HttpServletRequest request) { //Please change method name showFee to getFeeDetails
		HttpSession session = request.getSession(); //Meenal why use session here because i thing you are using interceptor
		AdminLogin loginMember = (AdminLogin) session.getAttribute("login");
		if (loginMember != null) {
			if (emiId != null) {
				registrationId = emiService.getRegistrationId(emiId);
			}
			List<Emi> emi1 = emiService.getFeesDetails(registrationId);
			List<Registration> registrations = emiService.getRegistrationDetails(registrationId);
			model.addAttribute("registrationList", registrations);
			model.addAttribute("feesDetails", emi1);
			model.addAttribute("message", message);
			model.addAttribute("registrationId", registrationId);
			map.put("Emi", new Emi());
			return "emi";
		} else {
			return "redirect:/login.do";
		}
	}

	/**
	 * Use for save emi details.
	 * 
	 * @param emi
	 * @param result
	 * @param model
	 * @param map
	 * @param request
	 * @return
	 * @throws ParseException
	 */
	@SuppressWarnings("unused") //Please put this line top of the class
	@RequestMapping(value = "/addEmi", method = { RequestMethod.GET, RequestMethod.POST }) //change action addEmi to saveEmi
	public String addEmiData(@ModelAttribute("Emi") Emi emi, ModelMap model, HttpServletRequest request) //change method name
			throws ParseException { 
		HttpSession session = request.getSession(); //Please reomve session
		AdminLogin loginMember = (AdminLogin) session.getAttribute("login");
		boolean status = false;
		if (emi.getEmiId() != null) {
			Integer registrationId = emiService.getRegistrationId(emi.getEmiId());
			emi.getRegistration().setRegistrationId(registrationId);
			status = emiService.editEmiInfo(emi);

			if (status) {
				model.addAttribute("registrationId", emi.getRegistration().getRegistrationId());
				model.addAttribute("message", "Emi Edit successfully");
			} else {
				model.addAttribute("message", "Error");
			}

		} else {
			status = emiService.addEmiInfo(emi); //change method name addEmiInfo to saveEmi
			if (status) {
				model.addAttribute("registrationId", emi.getRegistration().getRegistrationId());
				model.addAttribute("message", "Emi Save successfully");
			} else {
				model.addAttribute("message", "Error");
			}
		}

		return "redirect:/viewDetails.do?registrationId=" + emi.getRegistration().getRegistrationId();
	}

	/**
	 * use for edit the emi details
	 * 
	 * @param emi
	 * @param model
	 * @param emiId
	 * @return
	 */
	@RequestMapping(value = "/editEmiAction", method = { RequestMethod.GET, RequestMethod.POST }) //change action editEmiAction to editEmi
	public String editEmiData(@ModelAttribute("Emi") Emi emi, ModelMap model, Integer emiId) {
		emi = emiService.editEimForSingleRecord(emiId); //Method name should be editEmi

		if (emi != null) {//remove spaces
			model.put("Emi", emi);
		}
		return "emi";
	}

	/**
	 * use for delete the emi details
	 * 
	 * @param emi
	 * @param model
	 * @param emiId
	 * @return
	 */

	@RequestMapping(value = "/deleteEmiDetails", method = { RequestMethod.GET, RequestMethod.POST })
	public String deleteCatageory(@ModelAttribute("Emi") Emi emi, ModelMap model, //Please Meenal don't cut and paste code. Because you are in EMi controller and using deleteCategory name why
			@RequestParam(required = false) Integer emiId) { //Remove unused parameter like @ModelAttribute("Emi") Emi emi
		emiService.deleteEmiDetails(emiId);
		model.addAttribute("message", IConstant.STUDENT_DELETE_MESSAGE);
		model.addAttribute("emiId", emiId);
		return "redirect:/emi.do";
	}
}
