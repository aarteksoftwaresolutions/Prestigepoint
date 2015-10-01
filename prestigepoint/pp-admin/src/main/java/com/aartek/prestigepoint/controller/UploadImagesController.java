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
import org.springframework.web.bind.annotation.ResponseBody;

import com.aartek.prestigepoint.model.UploadImages;
import com.aartek.prestigepoint.service.UploadImagesService;
import com.aartek.prestigepoint.util.IConstant;

@Controller
public class UploadImagesController {

	@Autowired
	private UploadImagesService uploadImagesService;

	@RequestMapping("/uploadImagesView")
	private String uploadImages(Map<String, Object> map, ModelMap model, @RequestParam(required = false) String message) {
		List<UploadImages> uploadImagesList = uploadImagesService.getAllUploadImages();
		if(uploadImagesList!=null&& !uploadImagesList.isEmpty()){
		model.addAttribute("uploadImagesList", uploadImagesList);
		}
		map.put("UploadImages", new UploadImages());
		model.addAttribute("message", message);
		return "uploadImages";
	}

	@RequestMapping(value = "/saveUploadImages.do", method = { RequestMethod.GET, RequestMethod.POST })
	private String saveUploadImages(@ModelAttribute("UploadImages") UploadImages uploadImages, ModelMap model) {
		boolean status = false;
		status = uploadImagesService.saveUploadImages(uploadImages);
		if (status) {
			model.addAttribute("message", IConstant.UPLOAD_IMAGE_SUCCESS_MESSAGE);
		} else {
			model.addAttribute("message", IConstant.UPLOAD_IMAGE_FAILURE_MESSAGE);
		}
		return "redirect:/uploadImagesView.do";
	}

	@RequestMapping(value = "activeUploadImagesStatus", method = RequestMethod.GET)
	@ResponseBody
	public void activeUploadImagesStatus(@RequestParam(required = false) String uploadImageIdValue,
			Integer uploadImageValue) {
		uploadImagesService.changeUploadImagesStatus(uploadImageIdValue, uploadImageValue);
	}

	@RequestMapping(value = "/deleteUploadImages", method = { RequestMethod.GET, RequestMethod.POST })
	public String deleteUploadImages(@RequestParam(required = false) Integer imagesId,ModelMap model) {
		uploadImagesService.deleteUploadImages(imagesId);
		model.addAttribute("message", IConstant.UPLOAD_IMAGE_DELETE_MESSAGE);
		return "redirect:/uploadImagesView.do";
	}

}
