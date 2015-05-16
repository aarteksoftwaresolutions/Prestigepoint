//THIS CONTROLLER IS CREATED BY MAYANK SHUKLA
package com.aartek.prestigepoint.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aartek.prestigepoint.model.PhotoInFooter;
import com.aartek.prestigepoint.model.Scroller;
import com.aartek.prestigepoint.service.FooterPhotoService;
import com.aartek.prestigepoint.service.ScrollerService;
import com.aartek.prestigepoint.util.IConstant;

@Controller
public class ScrollerController {
	@Autowired
	private ScrollerService scrollerService;

	@SuppressWarnings("unchecked")
	@RequestMapping("/scrollerView")
	public String showScrollerPage(@SuppressWarnings("rawtypes") Map map,
			@RequestParam(required = false) String message, Model model) {

		List<Scroller> scrollerPhotoList = null;
		scrollerPhotoList = scrollerService.getAllImage();
		model.addAttribute("scrollerPhotoList", scrollerPhotoList);
		map.put("Scroller", new Scroller());
		model.addAttribute("message", message);
		return "scroller";
	}

	@RequestMapping("/scrollerAction")
	public String addimageForScroller(@SuppressWarnings("rawtypes") Map map,
			@ModelAttribute("Scroller") Scroller scroller, @RequestParam(required = false) String message, Model model) {

		boolean status = false;
		status = scrollerService.addScrollerPhoto(scroller);
		/*
		 * List<PhotoInFooter> photoInFooterList = null; photoInFooterList =
		 * footerPhotoService.getAllStudentName();
		 * model.addAttribute("photoInFooterList", photoInFooterList);
		 * map.put("PhotoInFooter", new PhotoInFooter());
		 * model.addAttribute("message", message);
		 */
		return "redirect:/scrollerView.do";
	}

	@RequestMapping(value = "/changeScrollerStatus", method = { RequestMethod.GET, RequestMethod.POST })
	public String changeScrollerStatus(@ModelAttribute("Scroller") Scroller scroller,
			@RequestParam(required = false) String imageId, @RequestParam(required = false) String checkedValue) {

		List<Scroller> scrollers = scrollerService.getSingleScrollDetail(imageId);
		scroller = scrollers.get(0);
		if (checkedValue.equals("checked")) {
			scrollerService.changeStatusByImageId(scroller);
		} else {
			scrollerService.uncheckStatusByImageId(scroller);
		}
		return "redirect:/addFooterPhoto";
	}

	@RequestMapping(value = "/deleteScroller", method = { RequestMethod.GET, RequestMethod.POST })
	public String deleteSingleScrollerImage(@ModelAttribute("Scroller") Scroller scroller, ModelMap model,
			@RequestParam(required = false) Integer imageId) {
		scrollerService.deleteScrollerImage(imageId);
		model.addAttribute("message", IConstant.SCROLLER_IMAGE_DELETE_MESSAGE);
		return "redirect:/scrollerView.do";

	}
}
