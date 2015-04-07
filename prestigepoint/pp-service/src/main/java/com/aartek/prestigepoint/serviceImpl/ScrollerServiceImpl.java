package com.aartek.prestigepoint.serviceImpl;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import sun.misc.BASE64Encoder;
import sun.misc.BASE64Decoder;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.aartek.prestigepoint.model.PhotoInFooter;
import com.aartek.prestigepoint.model.Scroller;
import com.aartek.prestigepoint.model.Subject;
import com.aartek.prestigepoint.repository.FooterPhotoRepository;
import com.aartek.prestigepoint.repository.ScrollerRepository;
import com.aartek.prestigepoint.service.FooterPhotoService;
import com.aartek.prestigepoint.service.ScrollerService;
import com.aartek.prestigepoint.util.IConstant;
import com.aartek.prestigepoint.util.ImageFormat;

@Service
public class ScrollerServiceImpl implements ScrollerService {
  @Autowired
  private ScrollerRepository scrollerRepository;

  @Value("${pp.saveScroller}")
  private String imagePath;
  /**
   * Method get all batch name form data base and display in grid
   */
  public List<Scroller> getAllImage() {
    List<Scroller> list = new ArrayList<Scroller>();
    list = scrollerRepository.getAllImage();
   
    return list;
  }

  /**
   * Get batch information for edit batch details.
   * 
   * @param batchId
   */

  /**
   * Method use for save batch information.
   * 
   * @param batch
   */
  public boolean addScrollerPhoto(Scroller scroller) {
    boolean status = false;
    if (scroller != null) {
    	scroller.setIsDeleted(IConstant.IS_DELETED);
    	scroller.setIsStatusActive(IConstant.IS_STATUS_ACTIVE);
      status = scrollerRepository.addScrollerPhoto(scroller);
      BufferedImage newImg;
      String imageData = scroller.getImgPath().replaceFirst("^data:image/[^;]*;base64,?", "");
      newImg = ImageFormat.decodeToImage(imageData);
      if (newImg != null) {
        try {
          File f = new File(imagePath);
          System.out.println(imagePath);
          f.mkdirs();
          ImageIO.write(newImg, "png", new File(imagePath + "/" + scroller.getImageId() + ".png"));
        } catch (IOException e) {
          e.printStackTrace();
        }
      }
      return status;
    } else {
      return status;
    }
   
  }




  /**
   * Delete batch information.
   * 
   * @param batchId
   */
  public void deleteScrollerImage(Integer imageId) {
	  scrollerRepository.deleteScrollerImage(imageId);
  }

public List<Scroller> getSingleScrollDetail(String imageId) {
	List<Scroller> scrollers=null;
	if(imageId!=null){
		scrollers=scrollerRepository.getSingleScrollDetail(imageId);
		
	}
	return scrollers;
}
public boolean changeStatusByImageId(Scroller scroller) {
	// TODO Auto-generated method stub
	boolean status = false;
	if(scroller!=null){
		scroller.setIsStatusActive(1);
		status=scrollerRepository.changeStatusByImageId(scroller);
		status=true;
	}
	return status;
}

public boolean uncheckStatusByImageId(Scroller scroller) {
	// TODO Auto-generated method stub
	
	boolean status = false;
	if(scroller!=null){
		scroller.setIsStatusActive(0);
		status=scrollerRepository.uncheckStatusByImageId(scroller);
		status=true;
	}
	return status;
}

public List<Scroller> getAllScrollImages() {
	List<Scroller> scrollers = scrollerRepository.getAllScrollImages();
	return scrollers;

}

/*public boolean addBatch(PhotoInFooter photoInFooter) {
	// TODO Auto-generated method stub
	return false;
}*/

}
