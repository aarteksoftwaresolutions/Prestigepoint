package com.aartek.prestigepoint.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aartek.prestigepoint.model.AddChallenge;
import com.aartek.prestigepoint.service.ChallengeService;

@Controller
public class ChallengeDetailsController {
    @Autowired
    private ChallengeService addChallengeService;

    @RequestMapping("/viewChallengeDetails")
    private String addChallenge(Map<String, Object> map, ModelMap model, @RequestParam(required = false) String message) {
        map.put("AddChallenge", new AddChallenge());
        List<AddChallenge> getChallengeDetails = addChallengeService.viewChallengeDetails();
        model.addAttribute("allAddChallengeList", getChallengeDetails);
        model.addAttribute("message", message);
        return "viewChallengeDetails";
    }

    @RequestMapping(value = "/displyChallengeDetails")
    public String viewChallengeList(@ModelAttribute("AddChallenge") AddChallenge addChallenge, ModelMap model,
                    Map<String, Object> map, @RequestParam(required = false) Integer challengeId) {
        addChallenge = addChallengeService.updateChallengeInformation(challengeId);
        map.put("AddChallenge", addChallenge);
        return "displyChallengeDetails";

    }
}
