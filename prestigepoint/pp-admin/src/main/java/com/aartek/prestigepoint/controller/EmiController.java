package com.aartek.prestigepoint.controller;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.aartek.prestigepoint.model.AdminLogin;
import com.aartek.prestigepoint.model.Emi;
import com.aartek.prestigepoint.model.Registration;
import com.aartek.prestigepoint.service.EmiService;
import com.aartek.prestigepoint.util.IConstant;

@Controller
public class EmiController {
	@Autowired
	private EmiService emiService;

	/*
	 * @Autowired private EmiValidator emiValidator;
	 */
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
	@RequestMapping(value = "/viewDetails", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String viewFeesDetails(@ModelAttribute("Emi") Emi emi,
			BindingResult result, ModelMap model, Map<String, Object> map,
			HttpServletRequest request,
			@RequestParam(required = false) Integer registrationId,
			Integer emiId) {
		HttpSession session = request.getSession();
		AdminLogin loginMember = (AdminLogin) session.getAttribute("login");
		if (loginMember != null) {
			List<Emi> emi1 = null;
			List<Registration> registrations = null;
			emi1 = emiService.getFeesDetails(registrationId);
			registrations = emiService.getRegistrationDetails(registrationId);
			model.addAttribute("registrationList", registrations);
			model.addAttribute("feesDetails", emi1);
			model.addAttribute("registrationId", registrationId);
			model.addAttribute("emiId", emiId);
			return "emi";
		} else {
			return "redirect:/login.do";
		}
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
	public String showFee(Map<String, Object> map, Model model,
			@RequestParam(required = false) Integer registrationId,
			@RequestParam(required = false) String message,
			@RequestParam(required = false) Integer emiId,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		AdminLogin loginMember = (AdminLogin) session.getAttribute("login");
		if (loginMember != null) {
			List<Registration> registrations = null;
			List<Emi> emi1 = null;

			if (emiId != null) {
				registrationId = emiService.getRegistrationId(emiId);
			}
			emi1 = emiService.getFeesDetails(registrationId);
			registrations = emiService.getRegistrationDetails(registrationId);
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
	@RequestMapping(value = "/addEmi", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String addEmiData(@ModelAttribute("Emi") Emi emi,
			BindingResult result, ModelMap model,
			final RedirectAttributes redirectAttributes,
			Map<String, Object> map, HttpServletRequest request)
			throws ParseException {
		HttpSession session = request.getSession();
		AdminLogin loginMember = (AdminLogin) session.getAttribute("login");
		String abc = loginMember.getFirstName();
		boolean status = false;
		if (emi.getEmiId() != null) {
			Integer registrationId = emiService.getRegistrationId(emi
					.getEmiId());
			emi.getRegistration().setRegistrationId(registrationId);
			status = emiService.editEmiInfo(emi);

			if (status) {
				model.addAttribute("registrationId", emi.getRegistration()
						.getRegistrationId());
				model.addAttribute("message", "Emi Edit successfully");
			} else {
				model.addAttribute("message", "Error");
			}

		} else {
			/*
			 * emiValidator.validate(emi, result); if (result.hasErrors()) {
			 * 
			 * redirectAttributes.addFlashAttribute("result",result);
			 *  return
			 * "redirect:/viewDetails.do?registrationId="
			 * +emi.getRegistration().getRegistrationId(); }
			 */
		
			status = emiService.addEmiInfo(emi);
			if (status) {
				model.addAttribute("registrationId", emi.getRegistration()
						.getRegistrationId());
				model.addAttribute("message", "Emi Save successfully");
			} else {
				model.addAttribute("message", "Error");
			}
		}
		
		return "redirect:/viewDetails.do?registrationId="
		  +emi.getRegistration().getRegistrationId();
		/*return "redirect:/viewDetails.do";
		// return "redirect:/viewStudentDetails.do";
*/	}

	@RequestMapping(value = "/editEmiAction", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String editEmiData(@ModelAttribute("Emi") Emi emi, ModelMap model,
			Map<String, Object> map, Integer emiId) {
		emi = emiService.editEimForSingleRecord(emiId);

		if (emi != null) {
			model.put("Emi", emi);
		}
		return "emi";
	}

	@RequestMapping(value = "/deleteEmiDetails", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String deleteCatageory(@ModelAttribute("Emi") Emi emi,
			BindingResult result, ModelMap model, HttpServletRequest request,
			@RequestParam(required = false) Integer emiId) {
		emiService.deleteEmiDetails(emiId);
		model.addAttribute("message", IConstant.STUDENT_DELETE_MESSAGE);
		model.addAttribute("emiId", emiId);
		return "redirect:/emi.do";
	}
}
