package com.aartek.prestigepoint.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {

  public static String sendEmail(String toEmail, String userPassword, String firstName) {
    final String username = IConstant.FROM_EMAIL_ID;
    final String password = IConstant.FROM_PASSWORD;
    Properties props = new Properties();
    props.put("mail.smtp.host", "mail.prestigepoint.in");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.port", "25");
   /* props.put("mail.smtp.starttls.enable", "true");*/
    props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
    Session session = Session.getInstance(props, new javax.mail.Authenticator() {
      protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(username, password);
      }
    });
    try {
      Message message = new MimeMessage(session);
      message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
      message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
      message.setSubject("Regards:registration confirmation");
      String msg = "Dear " + firstName + ",<br>";
      msg += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You have been registered with prestigepoint below are your user id and password:<br>";
      msg += " <br>";
      msg += "<b>User Name:</b>" + toEmail;
      msg += " <br>";
      msg += "<b>Password:</b>" + userPassword;
      msg += " <br>";
      msg += "Regards,<br>";
      msg += "Prestige Point";
      message.setContent(msg, "text/html");
      Transport.send(message);
      System.out.println("Done");
    } catch (MessagingException e) {
      throw new RuntimeException(e);
    }
    return null;
  }

  /* Confirmation link after student registration */

  public static String confirmationMail(String toEmail, String userPassword, String firstName, int regId) {
    final String username = IConstant.FROM_EMAIL_ID;
    final String password = IConstant.FROM_PASSWORD;
    Properties props = new Properties();
    props.put("mail.smtp.host", "mail.prestigepoint.in");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.port", "25");
   /* props.put("mail.smtp.starttls.enable", "true");*/
    props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
    Session session = Session.getInstance(props, new javax.mail.Authenticator() {
      protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(username, password);
      }
    });
    try {
      Message message = new MimeMessage(session);
      message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
      message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
      message.setSubject("Regards:registration confirmation");
      String msg = "Dear " + firstName + ",<br>";
      msg += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You have been registered with prestigepoint below are confirmation link click on link and access prestigepoint account:<br>";
      msg += " <br>";
      msg += "<b>User Name:</b>" + toEmail;
      msg += " <br>";
      msg += "<b>Password:</b>" + userPassword;
      msg += " <br>";
/*      msg += "http://localhost:8080/pp-web/verify.do?registrationId=" + regId;*/    // used on local
      msg += "http://prestigepoint.in/verify.do?registrationId=" + regId;     //used on the server
      msg += " <br>";
      msg += "Regards,<br>";
      msg += "Prestige Point";
      message.setContent(msg, "text/html");
      Transport.send(message);
      System.out.println("Done");
    } catch (MessagingException e) {
      throw new RuntimeException(e);
    }
    return null;
  }

  /* Forgot password block start */
  public static String forgotPassword(String toEmail, String userPassword, String firstName) {
    final String username = IConstant.FROM_EMAIL_ID;
    final String password = IConstant.FROM_PASSWORD;
    Properties props = new Properties();
    props.put("mail.smtp.host", "mail.prestigepoint.in");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.port", "25");
 /*   props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");*/
  /*  props.put("mail.smtp.starttls.enable", "true");*/
    props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
    Session session = Session.getInstance(props, new javax.mail.Authenticator() {
      protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(username, password);
      }
    });
    try {
      Message message = new MimeMessage(session);
      message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
      message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
      message.setSubject("Regards:Forgot password");
      String msg = "Dear " + firstName + ",<br>";
      msg += "&nbsp;&nbsp;&nbsp;We have received a request to email your password .Please find your log-in credentials below:<br>";
      msg += " <br>";
      msg += "Email ID /Username : " + toEmail + "<br>";
      msg += "Password : " + userPassword + "<br>";
      msg += " <br>";
      msg += "If you have not raised this request , please contact us email at hrd@prestigepoint.in<br>";
      msg += " <br>";
      msg += "Regards,<br>";
      msg += "Prestige Point";
      message.setContent(msg, "text/html");
      Transport.send(message);
      System.out.println("Done");
    } catch (MessagingException e) {
      throw new RuntimeException(e);
    }
    return null;
  }
  /* End */

public static void emiMail(String emailId, Integer submittedFee,
		String firstName, Integer totalFee, Integer amount, String date) {
	 final String username = IConstant.FROM_EMAIL_ID;
	    final String password = IConstant.FROM_PASSWORD;
	    Properties props = new Properties();
	    props.put("mail.smtp.host", "mail.prestigepoint.in");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.port", "25");
	   /* props.put("mail.smtp.starttls.enable", "true");*/
	    props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
	    Session session = Session.getInstance(props, new javax.mail.Authenticator() {
	      protected PasswordAuthentication getPasswordAuthentication() {
	        return new PasswordAuthentication(username, password);
	      }
	    });
	
	    try {
	        Message message = new MimeMessage(session);
	        message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
	        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailId));
	        message.setSubject("Regards:Acknowledgement letter for submitting pending amount");
	        String msg = "Dear "+ "<b>"  + firstName + ",<br>";
	        msg += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This letter is to acknowledge for submitting  of your EMI amount is-: " + amount +  "&nbsp;&nbsp;Your Total fee is:"+ totalFee;
	        msg += " <br>";
	      /*  msg += "<b>Your Total fee is:</b>" + totalFee;*/
	      /*  msg += " <br>";*/
	        msg += "Your submitted fee is:"+ "<b>" + submittedFee;
	        msg += " <br>";
	       /* msg += "Your Today's Emi is=" + amount;*/
	        msg += " <br>";
	      /*  msg +="for more info contact to hrd@prestigepoint.in";*/
	        msg += "Regards & Thanks <br>";
	        msg += "Prestige Point";
	        message.setContent(msg, "text/html");
	        Transport.send(message);
	        System.out.println("Done");
	      } catch (MessagingException e) {
	        throw new RuntimeException(e);
	      }
	      return;
	    
}

public static void editEmiMail(String emailId, Integer submittedFee,
		String firstName, Integer totalFee, Integer amount, String date) {
	    final String username = IConstant.FROM_EMAIL_ID;
	    final String password = IConstant.FROM_PASSWORD;
	    Properties props = new Properties();
	    props.put("mail.smtp.host", "mail.prestigepoint.in");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.port", "25");
	   /* props.put("mail.smtp.starttls.enable", "true");*/
	    props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
	    Session session = Session.getInstance(props, new javax.mail.Authenticator() {
	      protected PasswordAuthentication getPasswordAuthentication() {
	        return new PasswordAuthentication(username, password);
	      }
	    });
	
	    try {
	        Message message = new MimeMessage(session);
	        message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
	        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailId));
	        message.setSubject("Regards:Acknowledgement letter for Editting your Previous Emi amount");
	        String msg = "Dear "+ "<b>"  + firstName + ",<br>";
	        msg += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sorry This letter is to acknowledge for editting  your EMI Amount because some of reason we add wrong EMI. Your Submmited EMI Amount is-: " + amount +  "&nbsp;&nbsp;Your Total fee is:"+ totalFee;
	        msg += " <br>";
	      /*  msg += "<b>Your Total fee is:</b>" + totalFee;*/
	      /*  msg += " <br>";*/
	        msg += "Your submitted fee is:"+ "<b>" + submittedFee;
	        msg += " <br>";
	       /* msg += "Your Today's Emi is=" + amount;*/
	        msg += " <br>";
	      /*  msg +="for more info contact to hrd@prestigepoint.in";*/
	        msg += "Regards & Thanks <br>";
	        msg += "Prestige Point";
	        message.setContent(msg, "text/html");
	        Transport.send(message);
	        System.out.println("Done");
	      } catch (MessagingException e) {
	        throw new RuntimeException(e);
	      }
	      return;
}
  
  
  /*public static void main(String[] args) {
	System.out.println("test");
	
	final String username = IConstant.FROM_EMAIL_ID;
    final String password = IConstant.FROM_PASSWORD;
    Properties props = new Properties();
    props.put("mail.smtp.host", "mail.prestigepoint.in");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.port", "25");
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
    Session session = Session.getInstance(props, new javax.mail.Authenticator() {
      protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(username, password);
      }
    });
    try {
      Message message = new MimeMessage(session);
      message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
      message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("sumitgangrade1006@gmail.com"));
      message.setSubject("Regards:Forgot password");
      
      message.setContent("Hiiii test mail", "text/html");
      Transport.send(message);
      System.out.println("Done");
    } catch (MessagingException e) {
      throw new RuntimeException(e);
    }
}*/

}
