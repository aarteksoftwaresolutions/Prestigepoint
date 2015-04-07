package com.aartek.prestigepoint.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aartek.prestigepoint.model.AddPlacedStudent;
import com.aartek.prestigepoint.repository.AddPlacedStudentRepository;
import com.aartek.prestigepoint.repository.PlacedStudentRepository1;
import com.aartek.prestigepoint.service.PlacedStudentService1;
import com.aartek.prestigepoint.util.DateFormat;

@Service
public class PlacedStudentServiceImp1 implements PlacedStudentService1 {

  @Autowired
  private PlacedStudentRepository1 viewPlacedStudentRepository;

  public java.util.List<AddPlacedStudent> allPlacedStudent() {
    List<AddPlacedStudent> list = new ArrayList<AddPlacedStudent>();
    list = viewPlacedStudentRepository.allPlacedStudent();
    return list;
  }

  public AddPlacedStudent editStudentInformation(Integer studentId) {
    List<Object> list = new ArrayList<Object>();
    AddPlacedStudent addPlacedStudent = null;
    list = viewPlacedStudentRepository.editStudentInformation(studentId);
    for (Object object : list) {
      addPlacedStudent = (AddPlacedStudent) object;
    }
    list = null;//it is used for memory save
    return addPlacedStudent;

  }

  public void deleteStudentInformation(Integer studentId) {

    viewPlacedStudentRepository.deleteStudentInformation(studentId);

  }
/*
 * getPlacedStudentDetails is used for change the format of date
 */
  public List<AddPlacedStudent> getPlacedStudentDetails(String fromDate, String toDate) {
    List<AddPlacedStudent> placedStudentList = viewPlacedStudentRepository.getPlacedStudentDetails(
        DateFormat.getMMDDYYYYDateFormat(fromDate), DateFormat.getMMDDYYYYDateFormat(toDate));
    return placedStudentList;

  }

public boolean addStudentInformation(AddPlacedStudent addPlacedStudent) {
	// TODO Auto-generated method stub
	return false;
}

 
}
