package com.aartek.prestigepoint.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aartek.prestigepoint.model.AddChallenge;
import com.aartek.prestigepoint.repository.AddChallengeRepository;
import com.aartek.prestigepoint.service.AddChallengeService;
import com.aartek.prestigepoint.util.IConstant;

@Service
public class AddChallengeServiceImp implements AddChallengeService {
	@Autowired
	private AddChallengeRepository addChallengeRepository;

	public boolean addChallengeInformation(AddChallenge addChallenge) {
		addChallenge.setIsDeleted(IConstant.IS_DELETED);
		addChallenge.setIsActive(IConstant.IS_DELETED_DEACTIVE);
		addChallengeRepository.addChallengeInformation(addChallenge);
		return true;
	}

	public List<AddChallenge> allAddChallengeList() {
		List<AddChallenge> allAddChallengeList = new ArrayList<AddChallenge>();
		allAddChallengeList = addChallengeRepository.allAddChallengeList();
		return allAddChallengeList;
	}

	public AddChallenge ChallengeListEdit(Integer challengeId) {
		List<Object> allAddChallengeList = new ArrayList<Object>();
		AddChallenge addChallenge = null;
		allAddChallengeList = addChallengeRepository
				.editChallengeInformation(challengeId);
		for (Object object : allAddChallengeList) {
			addChallenge = (AddChallenge) object;
		}
		return addChallenge;
	}

	public void deleteChallengeListInformation(Integer challengeId) {
		addChallengeRepository.deleteChallengeListInformation(challengeId);
	}

	public void ChallengeValue(String challengeIdValue, Integer challengeValue) {

		if (challengeIdValue != null && challengeValue != null) {
			AddChallenge addChallenge = null;
			addChallenge = addChallengeRepository
					.ChallengeValue(challengeValue);
			System.out.println("abc=" + addChallenge);
			if (challengeIdValue.equals("true")) {

				addChallenge.setIsActive(IConstant.IS_DELETED);

				addChallengeRepository.addChallengeInformation(addChallenge);
			} else {
				System.out.println("else=" + addChallenge);
				addChallenge.setIsActive(IConstant.IS_DELETED_DEACTIVE);
				addChallengeRepository.addChallengeInformation(addChallenge);
			}

		}
	}
}
