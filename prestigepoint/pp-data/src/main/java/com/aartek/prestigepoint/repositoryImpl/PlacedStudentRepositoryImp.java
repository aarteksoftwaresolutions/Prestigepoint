package com.aartek.prestigepoint.repositoryImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.prestigepoint.model.AddPlacedStudent;
import com.aartek.prestigepoint.repository.AddPlacedStudentRepository;

@Repository
public class PlacedStudentRepositoryImp implements AddPlacedStudentRepository {
  @Autowired
  private HibernateTemplate hibernateTemplate;

  public void addStudentInformation(AddPlacedStudent addPlacedStudent) {
    hibernateTemplate.saveOrUpdate(addPlacedStudent);
  }

}
