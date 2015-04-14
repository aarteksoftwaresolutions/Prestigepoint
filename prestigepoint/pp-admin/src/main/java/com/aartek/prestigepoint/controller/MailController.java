package com.aartek.prestigepoint.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.aartek.prestigepoint.model.AdminLogin;
import com.aartek.prestigepoint.model.Registration;
import com.aartek.prestigepoint.service.RegistrationService;

@Controller
public class MailController {

  @Autowired
  private RegistrationService registrationService;

  @Autowired
  private JavaMailSender mailSender;

  /**
   * Display mail sending page
   * 
   * @param map
   * @param model
   * @param request
   * @param emailId
   * @return
   */
  @RequestMapping("/sendMail")
  public String showSendMail(Map<String, Object> map, Model model, HttpServletRequest request,
      @RequestParam(required = false) String emailId) {
    HttpSession session = request.getSession();
    AdminLogin loginMember = (AdminLogin) session.getAttribute("login");
    if (loginMember != null) {
      map.put("Registration", new Registration());
      model.addAttribute("emailId", emailId);
      return "sendMail";
    } else {
      return "redirect:/login.do";
    }
  }

  /**
   * Use for send mail to particular address or all students or all enquires.
   * 
   * @param registration
   * @param result
   * @param model
   * @param map
   * @param request
   * @param attachFile
   * @return
   */
  @RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
  public String sendEmail(@ModelAttribute("Registration") Registration registration, BindingResult result,
      ModelMap model, Map<String, Object> map, HttpSession session,HttpServletRequest request,
      final @RequestParam CommonsMultipartFile attachFile) {
    // reads form input
    List<String> emailList = new ArrayList<String>();
    final String emailTo = registration.getEmailId();
    final String subject = registration.getSubject();
    final String message = registration.getMessage();
     if (emailTo == null) { 
    if (registration.getAllStudent() != null) {
      if (registration.getAllStudent().equals("allstudent")) {
        emailList = registrationService.getallStudentEmailId();
        final String[] email = emailList.toArray(new String[emailList.size()]);
       // System.out.println("attachFile: " + attachFile.getOriginalFilename());
          mailSender.send(new MimeMessagePreparator() {
          public void prepare(MimeMessage mimeMessage) throws Exception {
            MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
             messageHelper.setTo(emailTo); 
            InternetAddress[] addressTo = new InternetAddress[email.length];
            for (int i = 0; i < email.length; i++) {
              addressTo[i] = new InternetAddress(email[i]);
            }
            messageHelper.setTo(email);
            messageHelper.setSubject(subject);
            messageHelper.setText(message);
            // determines if there is an upload file, attach it
            // to
            // the
            // e-mail
            String attachName = attachFile.getOriginalFilename();
            if (!attachFile.equals("")) {
              messageHelper.addAttachment(attachName, new InputStreamSource() {
                public InputStream getInputStream() throws IOException {
                  return attachFile.getInputStream();
                }
              });
            }
          }

        });
      }
    }
    if (registration.getAllEnquiry() != null) {
      if (registration.getAllEnquiry().equals("allenquiry")) {
        emailList = registrationService.getallEnquiryEmailId();
        final String[] email = emailList.toArray(new String[emailList.size()]);
      //  System.out.println("attachFile: " + attachFile.getOriginalFilename());
        mailSender.send(new MimeMessagePreparator() {
          public void prepare(MimeMessage mimeMessage) throws Exception {
            MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
             messageHelper.setTo(emailTo); 
            InternetAddress[] addressTo = new InternetAddress[email.length];
            for (int i = 0; i < email.length; i++) {
              addressTo[i] = new InternetAddress(email[i]);
            }
            messageHelper.setTo(email);
            messageHelper.setSubject(subject);
            messageHelper.setText(message);
            // determines if there is an upload file, attach it
            // to
            // the
            // e-mail
            String attachName = attachFile.getOriginalFilename();
            if (!attachFile.equals("")) {
              messageHelper.addAttachment(attachName, new InputStreamSource() {
                public InputStream getInputStream() throws IOException {
                  return attachFile.getInputStream();
                }
              });
            }
          }

        });
      }
    }
     } 
    if (!emailTo.isEmpty() && emailTo != null) {
      /*List<File> attachedFiles = new ArrayList<File>();
      if (!attachFile.getOriginalFilename().equals("")) {
        File file=new File(attachFile.getOriginalFilename());
        try {
          System.out.println("file----"+file.getCanonicalPath()+","+file.getPath());
        } catch (IOException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
        }
        attachedFiles.add(file);
        System.out.println(attachedFiles);
        }
        final String userName = IConstant.FROM_EMAIL_ID;
        final String password = IConstant.FROM_PASSWORD;
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "mail.prestigepoint.in");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.port", "25");
        properties.put("mail.smtp.starttls.enable", "false");
        // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(userName, password);
            }
        };
        try {
      Session session = Session.getInstance(properties, auth);
      // creates a new e-mail message
      Message msg = new MimeMessage(session);

      msg.setFrom(new InternetAddress(userName));
      InternetAddress[] toAddresses = { new InternetAddress("praveen.raghuvanshii@gmail.com") };
      msg.setRecipients(Message.RecipientType.TO, toAddresses);
      msg.setSubject(subject);
      msg.setSentDate(new Date());

      // creates message part
      MimeBodyPart messageBodyPart = new MimeBodyPart();
      messageBodyPart.setContent(message, "text/html");

      // creates multi-part
      Multipart multipart = new MimeMultipart();
      multipart.addBodyPart(messageBodyPart);

      // adds attachments
      if (attachedFiles != null && attachedFiles.size() > 0) {
          for (File aFile : attachedFiles) {
              MimeBodyPart attachPart = new MimeBodyPart();
              System.out.println("insode");
              try {
                  attachPart.attachFile(aFile.getAbsolutePath());
              } catch (IOException ex) {
                  ex.printStackTrace();
              }

              multipart.addBodyPart(attachPart);
          }

      // sets the multi-part as e-mail's content
      msg.setContent(multipart);

      // sends the e-mail
      Transport.send(msg);
  }
        } catch (MessagingException e) {
          throw new RuntimeException(e);
        } */
      final String[] email2 = emailTo.split(",");
     // System.out.println("attachFile: " + attachFile.getOriginalFilename());
      mailSender.send(new MimeMessagePreparator() {
        public void prepare(MimeMessage mimeMessage) throws Exception {
          MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
          InternetAddress[] addressTo = new InternetAddress[email2.length];
          for (int i = 0; i < email2.length; i++) {
            addressTo[i] = new InternetAddress(email2[i]);
          }
          messageHelper.setTo("praveen.raghuvanshii@gmail.com"); 
          messageHelper.setSubject(subject);
          messageHelper.setText(message);
          // determines if there is an upload file, attach it to the
          // e-mail
          String attachName = attachFile.getOriginalFilename();
          if (!attachFile.equals("")) {
            messageHelper.addAttachment(attachName, new InputStreamSource() {
              public InputStream getInputStream() throws IOException {
                return attachFile.getInputStream();
              }
            });
          }
        }

      });
    }
    return "redirect:/mailSuccess.do";
  }

  /**
   * Use for show mail sending success message.
   * 
   * @param map
   * @param model
   * @param request
   * @return
   */
  @RequestMapping("/mailSuccess")
  public String showSuccessPage(Map<String, Object> map, Model model, HttpServletRequest request) {
    HttpSession session = request.getSession();
    AdminLogin loginMember = (AdminLogin) session.getAttribute("login");
    if (loginMember != null) {
      return "mailSuccess";
    } else {
      return "redirect:/login.do";
    }
  }

  /**
   * Use for get email address for sending mail.
   * 
   * @param model
   * @param map
   * @param request
   * @param emailId
   * @return
   */
  @RequestMapping(value = "/getEmailId", method = { RequestMethod.GET, RequestMethod.POST })
  public String sendSingleMail(ModelMap model, Map<String, Object> map, HttpServletRequest request,
      @RequestParam(required = false) String emailId) {
    model.addAttribute("emailId", emailId);
    return "redirect:/sendMail.do";
  }
}
