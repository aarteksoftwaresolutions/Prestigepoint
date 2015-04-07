package com.aartek.prestigepoint.repository;

import java.util.List;

import com.aartek.prestigepoint.model.AddPlacedStudent;

public interface PlacedStudentRepository1 {

  public List<AddPlacedStudent> allPlacedStudent();

  public List<Object> editStudentInformation(Integer studentId);

  public void deleteStudentInformation(Integer studentId);

  public List<AddPlacedStudent> getPlacedStudentDetails(String fromDate, String toDate);

}
