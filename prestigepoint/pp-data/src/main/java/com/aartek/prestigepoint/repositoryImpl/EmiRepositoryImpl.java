package com.aartek.prestigepoint.repositoryImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.prestigepoint.model.Emi;
import com.aartek.prestigepoint.model.Registration;
import com.aartek.prestigepoint.repository.EmiRepository;
import com.aartek.prestigepoint.util.IConstant;

@SuppressWarnings("unchecked")
@Repository
public class EmiRepositoryImpl implements EmiRepository {
  @Autowired
  private HibernateTemplate hibernateTemplate;

  public List<Emi> getFeesDetails(Integer registrationId) {
    List<Emi> list = null;
    list = hibernateTemplate.find("from Emi e where e.registration.registrationId=" + registrationId + " and e.isDeleted="+IConstant.IS_DELETED);
    
    return list;
  }

  public boolean addEmiInfo(Emi emi) {
	  Integer submittedAmount=null;
	  Integer oldAmount=0;
    if (emi != null) {
    	if(emi.getEmiId()!=null){
    	Emi oldEmi =(Emi)hibernateTemplate.get(Emi.class, emi.getEmiId());
    	  oldAmount=oldEmi.getAmount();
    	}
      hibernateTemplate.saveOrUpdate(emi);
      List<Registration> registrations = hibernateTemplate.find("from Registration r where r.registrationId="
          + emi.getRegistration().getRegistrationId());
      Registration registration = registrations.get(0);
            submittedAmount = registration.getSubmittedFee()-oldAmount+ emi.getAmount();
      registration.setSubmittedFee(submittedAmount);
      hibernateTemplate.update(registration);
      return true;
    } else {
      return false;
    }
  }

  public List<Registration> getRegistrationDetails(Integer registrationId) {
    List<Registration> list = null;
    list = hibernateTemplate.find("from Registration r where r.registrationId=" + registrationId +" and r.isDeleted="+IConstant.IS_DELETED);
    return list;
  }

  public List<Emi> getRegistrationId(Integer emiId) {
	  List<Emi>emis=hibernateTemplate.find("from Emi e where e.emiId=" + emiId);
	  return emis;
	  
}

public void deleteEmiDetails(Integer emiId) {
	Emi emi = (Emi) hibernateTemplate.get(Emi.class, emiId);
    if (null != emi) {
    	emi.getRegistration().setSubmittedFee(emi.getRegistration().getSubmittedFee()-emi.getAmount());
    	emi.setIsDeleted(IConstant.IS_DELETED_DEACTIVE);
    	hibernateTemplate.update(emi.getRegistration());
    	hibernateTemplate.update(emi);
     
} 
}
public List<Object> editEmi(Integer emiId) {
    List<Object> list = null;
  
    list = hibernateTemplate.find("from Emi e where e.emiId=" + emiId);
    return list;
  }


public List<Emi> getAllEmiId() {
	 List<Emi> emiList = null;
	    emiList = hibernateTemplate.find("from Emi where IS_DELETED=" + IConstant.IS_DELETED);
	    return emiList;

}

public Emi editEimForSingleRecord(Integer emiId) {
	Emi emi =null;
	emi= (Emi) hibernateTemplate.find("from Emi e where e.emiId=" + emiId);
	return emi;
}

public List<Registration> getEmiDetails(Integer registrationId) {
	 List<Registration> list = null;
	    list = hibernateTemplate.find("from Registration r where r.registrationId=" + registrationId +"and r.isDeleted="+IConstant.IS_DELETED);
	    return list;
	
}

public boolean editEmiInfo(Emi emi) {
	
	Integer submittedAmount=null;
	  Integer oldAmount=0;
  if (emi != null) {
  	if(emi.getEmiId()!=null){
  	Emi oldEmi =(Emi)hibernateTemplate.get(Emi.class, emi.getEmiId());
  	  oldAmount=oldEmi.getAmount();
  	}
    hibernateTemplate.saveOrUpdate(emi);
    List<Registration> registrations = hibernateTemplate.find("from Registration r where r.registrationId="
        + emi.getRegistration().getRegistrationId());
    Registration registration = registrations.get(0);
          submittedAmount = registration.getSubmittedFee()-oldAmount+ emi.getAmount();
    registration.setSubmittedFee(submittedAmount);
    hibernateTemplate.update(registration);
    return true;
  } else {
    return false;
  }
}

}
