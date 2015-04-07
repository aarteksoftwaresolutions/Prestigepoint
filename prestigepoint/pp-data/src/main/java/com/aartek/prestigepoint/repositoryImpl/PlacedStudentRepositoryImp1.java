package com.aartek.prestigepoint.repositoryImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.aartek.prestigepoint.model.AddPlacedStudent;
import com.aartek.prestigepoint.repository.PlacedStudentRepository1;
import com.aartek.prestigepoint.util.IConstant;

@Repository
public class PlacedStudentRepositoryImp1 implements PlacedStudentRepository1 {
  @Autowired
  private HibernateTemplate hibernateTemplate;

  public List<AddPlacedStudent> allPlacedStudent() {
    List<AddPlacedStudent> list = hibernateTemplate.find("from AddPlacedStudent aps where aps.isDeleted="
        + IConstant.IS_DELETED);
    return list;
  }

  public List<Object> editStudentInformation(Integer studentId) {
    List<Object> list = hibernateTemplate.find("from AddPlacedStudent a where a.studentId=" + studentId);
    return list;
  }

  public void deleteStudentInformation(Integer studentId) {
    AddPlacedStudent addPlacedStudent = (AddPlacedStudent) hibernateTemplate.get(AddPlacedStudent.class, studentId);
    addPlacedStudent.setIsDeleted(IConstant.IS_DELETED_DEACTIVE);
    if (null != addPlacedStudent) {
      hibernateTemplate.update(addPlacedStudent);
    }
  }

  public List<AddPlacedStudent> getPlacedStudentDetails(String fromDate, String toDate) {
    @SuppressWarnings("unchecked")
    List<AddPlacedStudent> placedStudentList = hibernateTemplate.find("from AddPlacedStudent a WHERE a.isDeleted="
        + IConstant.IS_DELETED + " AND a.releaseDateFromAartek BETWEEN '" + fromDate + "' AND '" + toDate + "' ");
    return placedStudentList;

  }

}
