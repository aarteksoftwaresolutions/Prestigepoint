package com.aartek.prestigepoint.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;
import java.util.Timer;
import java.util.TimerTask;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.aartek.prestigepoint.util.IConstant;

class BirthdayWish extends TimerTask {
  static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
  static final String DB_URL = "jdbc:mysql://localhost:3306/sumit23_prestigepoint_db";
  static final String USER = "root";
  static final String PASS = "root";

  public void run() {
    Connection conn = null;
    Statement stmt = null;
    Statement feeStmt = null;
    int isDeleted = 1;
    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection(DB_URL, USER, PASS);
      stmt = conn.createStatement();
      feeStmt = conn.createStatement();
      String sql = "select * from registration where IS_DELETED=" + isDeleted;
      String feeSql = "SELECT r.FIRST_NAME ,r.EMAIL_ID, MAX(e.DATE),e.REGISTRATION_ID FROM emi e LEFT OUTER JOIN registration r ON e.REGISTRATION_ID=r.REGISTRATION_ID GROUP BY e.REGISTRATION_ID";
      ResultSet rs = stmt.executeQuery(sql);
      ResultSet rs1 = feeStmt.executeQuery(feeSql);
      SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
      while (rs.next()) {
        Calendar cal = Calendar.getInstance();
        Calendar cal1 = Calendar.getInstance();
        String date = dateFormat.format(cal.getTime());
        Date birthdayDate = dateFormat.parse(rs.getString("DATE_OF_BIRTH"));
        Date todayDate = dateFormat.parse(date);
        cal.setTime(todayDate);
        cal1.setTime(birthdayDate);
        if ((cal.get(Calendar.DAY_OF_MONTH) == cal1.get(Calendar.DAY_OF_MONTH))
            && (cal.get(Calendar.MONTH) == cal1.get(Calendar.MONTH))) {
          final String username = IConstant.FROM_EMAIL_ID;
          final String password = IConstant.FROM_PASSWORD;
          Properties props = new Properties();
          props.put("mail.smtp.host", "smtp.gmail.com");
          props.put("mail.smtp.auth", "true");
          props.put("mail.smtp.port", "587");
          props.put("mail.smtp.starttls.enable", "true");
          Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
              return new PasswordAuthentication(username, password);
            }
          });
          try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(rs.getString("EMAIL_ID")));
            message.setSubject("Regards:birthday wishes");
            String msg = "Dear " + rs.getString("FIRST_NAME") + ",<br>";
            msg += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;On this special day, We wish you all the very best, all the joy you can ever have and may you be blessed abundantly today, tomorrow and the days to come! May you have a fantastic birthday and many more to come...<br>";
            msg += " <br>";
            msg += "<b>Wish you many many happy returns of the day.</b>";
            msg += " <br>";
            msg += "Regards,<br>";
            msg += "Prestige Point";
            message.setContent(msg, "text/html");
            Transport.send(message);
            System.out.println("Done");
          } catch (MessagingException e) {
            throw new RuntimeException(e);
          }
        }
      }
      while (rs1.next()) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        Date submittedDate = sdf.parse(rs1.getString(3));
        System.out.println("submittedDate.." + submittedDate);
        cal.setTime(submittedDate);
        cal.add(Calendar.DATE, 20);
        Date afterAddDate = cal.getTime();
        System.out.println("afterAddDate" + afterAddDate);
        Date date = new Date();
        String todayDate1 = sdf.format(date);
        Date currentDayDate = sdf.parse(todayDate1);
        if (currentDayDate.compareTo(afterAddDate) < 0) {
          final String username = IConstant.FROM_EMAIL_ID;
          final String password = IConstant.FROM_PASSWORD;
          Properties props = new Properties();
          props.put("mail.smtp.host", "smtp.gmail.com");
          props.put("mail.smtp.auth", "true");
          props.put("mail.smtp.port", "587");
          props.put("mail.smtp.starttls.enable", "true");
          Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
              return new PasswordAuthentication(username, password);
            }
          });
          try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(rs1.getString(2)));
            message.setSubject("Regards:Fees");
            String msg = "Dear " + rs1.getString(1) + ",<br>";
            msg += " <br>";
            msg += "Your Total Fees :&nbsp;&nbsp;&nbsp;" + rs1.getInt(5) + "<br>";
            msg += "Your Submitted Fees :&nbsp;&nbsp;&nbsp;" + rs1.getInt(6) + "<br>";
            msg += " <br>";
            msg += "<b>Please submit remaining fees</b>";
            msg += " <br>";
            msg += "Regards,<br>";
            msg += "Prestige Point";
            message.setContent(msg, "text/html");
            Transport.send(message);
            System.out.println("Done");
          } catch (MessagingException e) {
            throw new RuntimeException(e);
          }
        }
      }
    } catch (SQLException se) {
      se.printStackTrace();
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      try {
        if (stmt != null && feeStmt != null)
          stmt.close();
        feeStmt.close();
      } catch (SQLException se2) {
      }
      try {
        if (conn != null)
          conn.close();
      } catch (SQLException se) {
        se.printStackTrace();
      }
    }
  }
}

public class MailSchedular {
  public static void main(String[] args) {
    Timer timer = new Timer();
    Calendar date = Calendar.getInstance();
    timer.schedule(new BirthdayWish(), date.getTime(), 1000 * 60);
  }

}
