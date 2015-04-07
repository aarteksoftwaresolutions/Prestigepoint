package com.aartek.prestigepoint.repositoryImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.prestigepoint.model.AdminLogin;
import com.aartek.prestigepoint.repository.LoginRepository;

@SuppressWarnings("unchecked")
@Repository
public class LoginRepositoryImpl implements LoginRepository {
  @Autowired
  private HibernateTemplate hibernateTemplate;

  public List<Object> adminSignIn(String emailId, String password) {
    List<Object> login = null;
    login = hibernateTemplate.find("from AdminLogin al where al.emailId = ? and al.password = ?", emailId, password);
    return login;
  }

public boolean signUp(AdminLogin login) 
{
	if(login!=null)
	{
		hibernateTemplate.saveOrUpdate(login);
		return true;
	} else {
	      return false;
	    }
}

}
