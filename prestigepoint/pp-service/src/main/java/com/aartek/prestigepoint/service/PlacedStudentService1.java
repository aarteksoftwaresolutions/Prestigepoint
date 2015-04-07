package com.aartek.prestigepoint.service;

import java.util.List;

import com.aartek.prestigepoint.model.AddPlacedStudent;

public interface PlacedStudentService1 {

  java.util.List<AddPlacedStudent> allPlacedStudent();
  
  public boolean addStudentInformation(AddPlacedStudent addPlacedStudent);
  
  public AddPlacedStudent editStudentInformation(Integer studentId);

  public void deleteStudentInformation(Integer studentId);

  public List<AddPlacedStudent> getPlacedStudentDetails(String fromDate, String toDate);

}
