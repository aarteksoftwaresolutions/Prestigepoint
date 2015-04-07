package com.aartek.prestigepoint.repository;

import java.util.List;

import com.aartek.prestigepoint.model.AddChallenge;

public interface AddChallengeRepository {

	public void addChallengeInformation(AddChallenge addChallenge);

	public List<AddChallenge> allAddChallengeList();

	public List<Object> editChallengeInformation(Integer challengeId);

	public void deleteChallengeListInformation(Integer challengeId);

	public AddChallenge ChallengeValue(Integer challengeValue);

	

}
