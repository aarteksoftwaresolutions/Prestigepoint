package com.aartek.prestigepoint.repository;

import java.util.List;

import com.aartek.prestigepoint.model.AddMarquee;

public interface MarqueeRepository {

	public void saveMarquee(AddMarquee addMarquee);

	public List<AddMarquee> getAllMarqueeDiscription();

	public List<Object> editMarqueeDescription(Integer marqueeId);

	public void deleteMarqueeDescription(Integer marqueeId);


}
