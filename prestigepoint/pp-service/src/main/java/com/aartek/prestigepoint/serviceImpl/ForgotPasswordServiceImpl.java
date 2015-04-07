package com.aartek.prestigepoint.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aartek.prestigepoint.model.Registration;
import com.aartek.prestigepoint.repository.ForgotPasswordRepository;
import com.aartek.prestigepoint.service.ForgotPasswordService;
import com.aartek.prestigepoint.util.SendMail;

@Service
public class ForgotPasswordServiceImpl implements ForgotPasswordService {

  @Autowired
  private ForgotPasswordRepository forgotPasswordRepository;

  public boolean getPassword(String emailId) {
    List<Registration> list = forgotPasswordRepository.getPassword(emailId);
    if (list != null) {
      Registration registration = list.get(0);
      SendMail.forgotPassword(registration.getEmailId(), registration.getPassword(), registration.getFirstName());
      return true;
    } else {
      return false;
    }
  }
}
