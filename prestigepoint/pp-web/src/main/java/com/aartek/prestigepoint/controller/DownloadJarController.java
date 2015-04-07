package com.aartek.prestigepoint.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.aartek.prestigepoint.model.Upload;
import com.aartek.prestigepoint.service.UploadService;

@Controller
public class DownloadJarController {

  @Autowired
  private UploadService uploadService;
  
  @Value("${pp.uploadJar}")
  private String uploadJarPath;

  @RequestMapping(value = "/downloads", method = RequestMethod.GET)
  public String downloads() {
    return "downloads";
  }

  @RequestMapping(value = "/downloadJars", method = RequestMethod.GET)
  public String downloadJars(ModelMap model, Model m) {
    List<Upload> l = uploadService.downloadJar();
    model.addAttribute("jarlist", l);
    return "downloadJars";
  }

  @RequestMapping(value = "/getJar", method = RequestMethod.GET)
  public void Singlejar(@RequestParam("jarName") String jarName, @RequestParam("jarType") String jarType,
      HttpServletResponse response) throws IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    String filename = jarName;
    String filepath = uploadJarPath + File.separator + jarType;
  
    response.setContentType("APPLICATION/OCTET-STREAM");
    response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
    FileInputStream fileInputStream = new FileInputStream(filepath + File.separator + filename);
    int i;
    while ((i = fileInputStream.read()) != -1) {
      out.write(i);
    }
    fileInputStream.close();
    out.close();
  }

}
