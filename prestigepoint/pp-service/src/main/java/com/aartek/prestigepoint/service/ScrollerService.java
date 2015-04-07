package com.aartek.prestigepoint.service;

import java.util.List;

import com.aartek.prestigepoint.model.Batch;
import com.aartek.prestigepoint.model.PhotoInFooter;
import com.aartek.prestigepoint.model.Scroller;

public interface ScrollerService {

	public List<Scroller> getAllImage();

	public boolean changeStatusByImageId(Scroller scroller);
	
	public boolean uncheckStatusByImageId(Scroller scroller);
	
/*	public List<PhotoInFooter> listOfSelectedStudent();
	
	public PhotoInFooter editSingleStudentDetail(Integer studentId);
*/
	public List<Scroller> getSingleScrollDetail(String imageId);

	public boolean addScrollerPhoto(Scroller scroller);

	public void deleteScrollerImage(Integer imageId);

	public List<Scroller> getAllScrollImages();

}
