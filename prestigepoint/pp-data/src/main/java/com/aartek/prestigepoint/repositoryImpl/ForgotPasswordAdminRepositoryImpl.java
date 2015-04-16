package com.aartek.prestigepoint.repositoryImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.prestigepoint.model.AdminLogin;
import com.aartek.prestigepoint.repository.ForgotPasswordAdminRepository;
@Repository
public class ForgotPasswordAdminRepositoryImpl implements ForgotPasswordAdminRepository {
	@Autowired
	  private HibernateTemplate hibernateTemplate;
	  @SuppressWarnings("unchecked")
	public List<AdminLogin> getPassword(String emailId) {
		    List<AdminLogin> list = null;
		    list = hibernateTemplate.find("from AdminLogin a where a.emailId='" + emailId + "' ");
		    return list;
		  }

}
