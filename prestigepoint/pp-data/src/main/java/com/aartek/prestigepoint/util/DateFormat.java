package com.aartek.prestigepoint.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormat {
  public static String getYYYYMMDDDate(String date1) {
    SimpleDateFormat userDateFormat = new SimpleDateFormat("dd-MM-yyyy");
    SimpleDateFormat dateFormatNeeded = new SimpleDateFormat("yyyy-MM-dd");
    Date date = null;
    try {
      date = userDateFormat.parse(date1);
    } catch (ParseException e) {
      e.printStackTrace();
    }
    String convertedDate = dateFormatNeeded.format(date);
    return convertedDate;
  }

  public static String getMMDDYYYYDate(String date1) {
    SimpleDateFormat userDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat dateFormatNeeded = new SimpleDateFormat("dd-MM-yyyy");
    Date date = null;
    try {
      date = userDateFormat.parse(date1);
    } catch (ParseException e) {
      e.printStackTrace();
    }
    String convertedDate = dateFormatNeeded.format(date);
    return convertedDate;
  }

  public static String getMMDDYYYYDateFormat(String datereleaseAartek) {
    String formattedDate = null;
    try {
      SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
      Date tempDate = simpleDateFormat.parse(datereleaseAartek);
      SimpleDateFormat outputDateFormat = new SimpleDateFormat("MM-dd-YYYY");
      formattedDate = outputDateFormat.format(tempDate);
      System.out.println("Output date is = " + outputDateFormat.format(tempDate));
    } catch (ParseException ex) {
      System.out.println("Parse Exception");
    }
    return formattedDate;
  }
  
}
