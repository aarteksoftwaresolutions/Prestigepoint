package com.aartek.prestigepoint.controller;

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

import com.aartek.prestigepoint.model.AdminLogin;
import com.aartek.prestigepoint.model.Batch;
import com.aartek.prestigepoint.model.CurrentBatch;
import com.aartek.prestigepoint.service.BatchService;
import com.aartek.prestigepoint.service.CurrentBatchService;
import com.aartek.prestigepoint.util.IConstant;

@Controller
public class CurrentBatchController {

  @Autowired
  private BatchService batchService;

  @Autowired
  private CurrentBatchService currentBatchService;

  /**
   * Show the current batch page
   * 
   * @param map
   * @param model
   * @param message
   * @param request
   * @return
   */
  @RequestMapping("/currentBatch")
  public String showCurrentbatch(Map<String, Object> map, Model model, @RequestParam(required = false) String message,
      HttpServletRequest request) {
    HttpSession session = request.getSession();
    AdminLogin loginMember = (AdminLogin) session.getAttribute("login");
    if (loginMember != null) {
    	
    	
    	
      map.put("CurrentBatch", new CurrentBatch());
      List<Batch> batchList = batchService.getAllBatchName();
      if (batchList != null) {
        model.addAttribute("batch", batchList);
      }
      List<CurrentBatch> currentBatchList = currentBatchService.getAllCurrentBatch();
      if (currentBatchList != null) {
        model.addAttribute("currentBatchList", currentBatchList);
      }
      model.addAttribute("message", message);
      return "currentBatch";
    } else {
      return "redirect:/login.do";
    }
  }

  /**
   * Add current batch information
   * 
   * @param currentBatch
   * @param result
   * @param model
   * @param map
   * @param request
   * @return
   */
  @RequestMapping(value = "/addCurrentBatch", method = { RequestMethod.GET, RequestMethod.POST })
  public String addCurrrentBatchInfo(@ModelAttribute("CurrentBatch") CurrentBatch currentBatch, BindingResult result,
      ModelMap model, Map<String, Object> map, HttpServletRequest request,
      @RequestParam(required = false) Integer currentBatchId) {
    List<Batch> batchList = null;
    batchList = batchService.getAllBatchName();
    if (batchList != null) {
      model.addAttribute("batch", batchList);
    }
    List<CurrentBatch> currentBatchList = currentBatchService.getAllCurrentBatch();
    if (currentBatchList != null) {
      model.addAttribute("currentBatchList", currentBatchList);
    }
    String method = request.getMethod();
    if (method.equals("GET")) {
      currentBatch = currentBatchService.updateCurrentBatch(currentBatchId);
      model.addAttribute("currentBatchList", currentBatchList);
      map.put("CurrentBatch", currentBatch);
      return "currentBatch";
    } else {
      if (currentBatch.getCurrentBatchId() != null) {
        boolean status = currentBatchService.addCurrentBatchInformation(currentBatch);
        if (status) {
          model.addAttribute("message", IConstant.UPDATE_CURRENT_BATCH_SUCCESS_MESSAGE);
        } else {
          model.addAttribute("message", IConstant.CURRENT_BATCH_FAILURE_MESSAGE);
        }
      } else {
        boolean status = currentBatchService.addCurrentBatchInformation(currentBatch);
        if (status) {
          model.addAttribute("message", IConstant.CURRENT_BATCH_SUCCESS_MESSAGE);
        } else {
          model.addAttribute("message", IConstant.CURRENT_BATCH_FAILURE_MESSAGE);
        }
      }
    }
    return "redirect:/currentBatch.do";
  }

  /**
   * Delete current batch.
   * 
   * @param currentBatch
   * @param result
   * @param model
   * @param request
   * @param currentBatchId
   * @return
   */
  @RequestMapping(value = "/deleteCurrentBatch", method = { RequestMethod.GET, RequestMethod.POST })
  public String deleteCurrentBatch(@ModelAttribute("CurrentBatch") CurrentBatch currentBatch, BindingResult result,
      ModelMap model, HttpServletRequest request, @RequestParam(required = false) Integer currentBatchId) {
    currentBatchService.deleteCurrentBatch(currentBatchId);
    model.addAttribute("message", IConstant.CURRENT_BATCH_DELETE_MESSAGE);
    return "redirect:/currentBatch.do";
  }

}
