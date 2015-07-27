package com.aartek.prestigepoint.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aartek.prestigepoint.model.AddMarquee;
import com.aartek.prestigepoint.repository.MarqueeRepository;
import com.aartek.prestigepoint.service.MarqueeService;
import com.aartek.prestigepoint.util.IConstant;
@Service
public class MarqueeServiceImpI implements MarqueeService {

	@Autowired
	private MarqueeRepository addMarqueeRepository;
	
	public boolean saveMarquee(AddMarquee addMarquee) {
		addMarquee.setIsDeleted(IConstant.IS_DELETED);
		addMarquee.setIsActive(IConstant.IS_DELETED_DEACTIVE);
		 addMarqueeRepository.saveMarquee(addMarquee);
		 
		return 	true;
	}

	public List<AddMarquee> getAllMarqueeDescription() {
		List<AddMarquee> list = new ArrayList<AddMarquee>();
		list = addMarqueeRepository.getAllMarqueeDiscription();
		return list;
		
	}
	

	public AddMarquee editMarqueeDescription(Integer marqueeId) {
		List<Object> allMaqqueeList = new ArrayList<Object>();
		AddMarquee addMarquee = null;
		allMaqqueeList = addMarqueeRepository.editMarqueeDescription(marqueeId);
		for (Object object : allMaqqueeList) {
			addMarquee = (AddMarquee) object;
		}
		return addMarquee;
	}


	public void deleteMarqueeDescription(Integer marqueeId) {
		addMarqueeRepository.deleteMarqueeDescription(marqueeId);
		
	}

	public void changeMarqueeStatus(String marqueeIdValue, Integer marqueeValue) {
		if (marqueeIdValue != null && marqueeValue != null) {
			AddMarquee addMarquee = (AddMarquee) addMarqueeRepository.editMarqueeDescription(marqueeValue).get(0);
			if (marqueeIdValue.equals("true")) {

				addMarquee.setIsActive(IConstant.IS_DELETED);

				addMarqueeRepository.saveMarquee(addMarquee);
			} else {
				addMarquee.setIsActive(IConstant.IS_DELETED_DEACTIVE);
				addMarqueeRepository.saveMarquee(addMarquee);
			}

		}
		
	}
		
	}


