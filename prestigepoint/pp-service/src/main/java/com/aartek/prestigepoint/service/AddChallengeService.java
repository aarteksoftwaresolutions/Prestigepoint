package com.aartek.prestigepoint.service;

import java.util.List;

import com.aartek.prestigepoint.model.AddChallenge;

public interface AddChallengeService {

public boolean addChallengeInformation(AddChallenge addChallenge);

public List<AddChallenge> allAddChallengeList();

public AddChallenge ChallengeListEdit(Integer challengeId);

public void deleteChallengeListInformation(Integer challengeId);

public void ChallengeValue(String challengeIdValue, Integer challengeValue);

}
