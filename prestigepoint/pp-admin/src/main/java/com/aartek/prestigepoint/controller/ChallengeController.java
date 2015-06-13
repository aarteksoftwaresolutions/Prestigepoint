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
import org.springframework.web.bind.annotation.ResponseBody;

import com.aartek.prestigepoint.model.AddChallenge;
import com.aartek.prestigepoint.service.ChallengeService;
import com.aartek.prestigepoint.util.IConstant;

/**
 * 
 * @author Meenal
 *
 */
@Controller
public class ChallengeController {

	private static final Logger logger = Logger.getLogger(ChallengeController.class);

	@Autowired
	private ChallengeService addChallengeService; //change addChallengeService to challengeService

	/**
	 * display addChallenge jsp for add Challenge.
	 * 
	 * @param map
	 * @param model
	 * @param message
	 * @return
	 */

	@RequestMapping("/addChallenge")  //change addChallenge to challenge
	private String addChallenge(Map<String, Object> map, ModelMap model, @RequestParam(required = false) String message) { //change method name addChallenge to showChallengePage
		map.put("AddChallenge", new AddChallenge());

		List<AddChallenge> allAddChallengeList = addChallengeService.allAddChallengeList(); //change method name allAddChallengeList() to getAllchallenge()
		//change list name allAddChallengeList to allChallenge
		logger.info("This is Info controller!"); //Change logger information
		model.addAttribute("allAddChallengeList", allAddChallengeList);
		model.addAttribute("message", message);
		return "addChallenge";
	}

	/**
	 * Use for save ChallengeInformation.
	 * 
	 * @param addChallenge
	 * @param model
	 * @return
	 */

	@RequestMapping(value = "/addChallengeAction.do", method = { RequestMethod.GET, RequestMethod.POST }) //change action name addChallengeAction to saveChallenge
	private String addChallengeInformation(@ModelAttribute("AddChallenge") AddChallenge addChallenge, ModelMap model) { //Change method name addChallengeInformation
		if (addChallenge.getChallengeId() != null) {
			addChallengeService.addChallengeInformation(addChallenge); //change method name addChallengeInformation to saveChallengeName
			model.addAttribute("message", IConstant.CHALLENGE_UPDATE_MESSAGE);
		} else {
			addChallengeService.addChallengeInformation(addChallenge); //Same change method name
			model.addAttribute("message", IConstant.CHALLENGE_SUCCESS_MESSAGE);

		}

		return "redirect:/addChallenge.do"; //Remove above space
	}

	/**
	 * Use for update ChallengeInformation.
	 * 
	 * @param addChallenge
	 * @param model
	 * @param map
	 * @param challengeId
	 * @return
	 */
	@RequestMapping(value = "/updateChallengeInformatin")  //change updateChallengeInformatin to editChallenge
	public String updateChallengeInformation(@ModelAttribute("AddChallenge") AddChallenge addChallenge, //Change method name
			Map<String, Object> map, @RequestParam(required = false) Integer challengeId) {
		addChallenge = addChallengeService.updateChallengeInformation(challengeId); //Change method name updateChallengeInformation to editChallengeDetails
		map.put("AddChallenge", addChallenge);

		return "addChallenge";

	} //Please remove spaces

	/**
	 * Use for delete ChallengeInformation.
	 * 
	 * @param challengeId
	 * @return
	 */
	@RequestMapping(value = "/deleteChallengeInformation", method = { RequestMethod.GET, RequestMethod.POST })//Change deleteChallengeInformation to deleteChallenge
	public String deleteStudentInformation(@RequestParam(required = false) Integer challengeId) {
		addChallengeService.deleteChallengeInformation(challengeId); //change method name deleteChallengeInformation to deleteChallenge
		logger.info("challengeId"); //Why use this line.
		return "redirect:/addChallenge.do";
	}

	/**
	 * Use for view the ChallengeInformation.
	 * 
	 * @param addChallenge
	 * @param model
	 * @param map
	 * @param challengeId
	 * @return
	 */
	@RequestMapping(value = "/viewChallengeInformation") //Change viewChallengeInformation to getChallengeDetails
	public String viewChallengeList(@ModelAttribute("AddChallenge") AddChallenge addChallenge,
			Map<String, Object> map, @RequestParam(required = false) Integer challengeId) {
		addChallenge = addChallengeService.updateChallengeInformation(challengeId);
		map.put("AddChallenge", addChallenge);
		return "viewChallenge";

	}//Remove spaces

	/**
	 * Use for ActiveStatus.
	 * 
	 * @param challengeIdValue
	 * @param challengeValue
	 */
	@RequestMapping(value = "changeActiveStatusAction", method = RequestMethod.GET) //Change changeActiveStatusAction to activeChallengeStatus
	@ResponseBody
	public void ActiveStatusinfo(@RequestParam(required = false) String challengeIdValue, Integer challengeValue) { //change method name ActiveStatusinfo activeChallengeStatus
		addChallengeService.ChallengeValue(challengeIdValue, challengeValue); //change method name ChallengeValue to changeChallengeStatus

	}//Remove spaces
}
