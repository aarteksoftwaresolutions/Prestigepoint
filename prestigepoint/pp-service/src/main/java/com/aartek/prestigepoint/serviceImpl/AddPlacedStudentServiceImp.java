package com.aartek.prestigepoint.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aartek.prestigepoint.model.AddPlacedStudent;
import com.aartek.prestigepoint.repository.AddPlacedStudentRepository;
import com.aartek.prestigepoint.service.PlacedStudentService;
import com.aartek.prestigepoint.util.DateFormat;
import com.aartek.prestigepoint.util.IConstant;

@Service
public class AddPlacedStudentServiceImp implements PlacedStudentService {
  @Autowired
  private AddPlacedStudentRepository addPlacedStudentRepository;
/*
 * setReleaseDateFromAartek method is used for change the format dd-mm-yyyy to mm-dd-yyyy
 */
  public boolean addStudentInformation(AddPlacedStudent addPlacedStudent) {
    addPlacedStudent.setIsDeleted(IConstant.IS_DELETED);
    addPlacedStudent.setReleaseDateFromAartek(DateFormat.getMMDDYYYYDateFormat(addPlacedStudent.getReleaseDateFromAartek()));
    addPlacedStudentRepository.addStudentInformation(addPlacedStudent);
    return true;
  }
}
