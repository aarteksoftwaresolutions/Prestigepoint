package com.aartek.prestigepoint.repositoryImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.prestigepoint.model.PhotoInFooter;
import com.aartek.prestigepoint.model.Scroller;
import com.aartek.prestigepoint.repository.ScrollerRepository;
import com.aartek.prestigepoint.util.IConstant;

@SuppressWarnings("unchecked")
@Repository
public class ScrollerRepositoryImpl implements ScrollerRepository {
  @Autowired
  private HibernateTemplate hibernateTemplate;

  /**
   * Get all batch name from data base.
   */
  public List<Scroller> getAllImage() {
    List<Scroller> imageList = null;
    imageList = hibernateTemplate.find("from Scroller where IS_DELETED=" + IConstant.IS_DELETED);
    return imageList;
  }

 
  /**
   * Method use for save batch details into database.
   */
  public boolean addScrollerPhoto(Scroller scroller) {
	  boolean status=false;
    if (scroller != null) {
      hibernateTemplate.saveOrUpdate(scroller);
      return true;
    } else {
      return false;
    }
	  
  }

  public void deleteScrollerImage(Integer imageId) {
	  Scroller scroller = (Scroller) hibernateTemplate.get(Scroller.class, imageId);
	  scroller.setIsDeleted(IConstant.IS_DELETED_DEACTIVE);
	  scroller.setIsStatusActive(IConstant.IS_DELETED_DEACTIVE);
    if (null != scroller) {
      hibernateTemplate.update(scroller);
    }
  }


public List<Scroller> getSingleScrollDetail(String imageId) {
	  List<Scroller> scrollers=null;
	  scrollers= hibernateTemplate.find("from Scroller where IMAGE_ID="+imageId);
		  return scrollers;
}


public List<Object> editSingleStudentDetail(Integer studentId) {
	// TODO Auto-generated method stub
	return null;
}

public boolean changeStatusByImageId(Scroller scroller) {
	// TODO Auto-generated method stub
	boolean status=false;
	{
	hibernateTemplate.saveOrUpdate(scroller);
	
	status=true;
	}
	return status;
}

public boolean uncheckStatusByImageId(Scroller scroller) {
	// TODO Auto-generated method stub
	boolean status=false;
	{
	hibernateTemplate.saveOrUpdate(scroller);
	status=true;
	}
	return status;
}


public List<Scroller> getAllScrollImages() {
	  List<Scroller> scrollers=null;
	  scrollers= hibernateTemplate.find("from Scroller s where s.isDeleted=" + IConstant.IS_DELETED);
		  return scrollers;
}

}
