package com.aartek.prestigepoint.repositoryImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.prestigepoint.model.Enquiry;
import com.aartek.prestigepoint.repository.ContactRepository;

@Repository
public class ContactRepositoryImpl implements ContactRepository {
  @Autowired
  private HibernateTemplate hibernateTemplate;

  public boolean addContactMessage(Enquiry enquiry) {
    if (enquiry != null) {
      hibernateTemplate.save(enquiry);
      return true;
    } else {
      return false;
    }
  }

}
