package com.aartek.prestigepoint.repositoryImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.prestigepoint.model.AddChallenge;
import com.aartek.prestigepoint.repository.AddChallengeRepository;
import com.aartek.prestigepoint.util.IConstant;

@SuppressWarnings("unchecked")
@Repository
public class ChallengeRepositoryImp implements AddChallengeRepository {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public void addChallengeInformation(AddChallenge addChallenge) {

		hibernateTemplate.saveOrUpdate(addChallenge);
	}

	public List<AddChallenge> allAddChallengeList() {

		List<AddChallenge> allAddChallengeList = hibernateTemplate
				.find("from AddChallenge ac where ac.isDeleted="
						+ IConstant.IS_DELETED);
		return allAddChallengeList;
	}

	public List<Object> editChallengeInformation(Integer challengeId) {

		List<Object> challengeList = hibernateTemplate
				.find("from AddChallenge a where a.challengeId=" + challengeId);
		return challengeList;
	}

	public void deleteChallengeListInformation(Integer challengeId) {
		AddChallenge addChallenge = hibernateTemplate.get(AddChallenge.class,
				challengeId);
		addChallenge.setIsDeleted(IConstant.IS_DELETED_DEACTIVE);
		if (null != addChallenge) {
			hibernateTemplate.update(addChallenge);
		}

	}

	public AddChallenge ChallengeValue(Integer challengeValue) {
		AddChallenge addChallenge2 = null;
       List<AddChallenge> addChallenge = hibernateTemplate.find("from AddChallenge acw where acw.challengeId=" +challengeValue);
		if (addChallenge != null) {
			addChallenge2 = addChallenge.get(0);
		}
		return addChallenge2;
	}

}