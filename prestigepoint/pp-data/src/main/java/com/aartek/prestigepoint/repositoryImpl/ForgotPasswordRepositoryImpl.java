package com.aartek.prestigepoint.repositoryImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.prestigepoint.model.Registration;
import com.aartek.prestigepoint.repository.ForgotPasswordRepository;
import com.aartek.prestigepoint.util.IConstant;

@SuppressWarnings("unchecked")
@Repository
public class ForgotPasswordRepositoryImpl implements ForgotPasswordRepository {

  @Autowired
  private HibernateTemplate hibernateTemplate;

  public List<Registration> getPassword(String emailId) {
    List<Registration> list = null;
    list = hibernateTemplate.find("from Registration r where r.emailId='" + emailId + "' and r.isDeleted="
        + IConstant.IS_DELETED);
    return list;
  }
}
