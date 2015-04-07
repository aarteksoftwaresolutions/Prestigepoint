/**
 * 
 */
package com.aartek.prestigepoint.repositoryImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.prestigepoint.model.ForumAnswer;
import com.aartek.prestigepoint.model.ForumQuestion;
import com.aartek.prestigepoint.repository.ForumAnswerRepository;
import com.aartek.prestigepoint.util.IConstant;

/**
 * @author deepak
 * 
 */
@Repository
@SuppressWarnings("all")
public class ForumAnswerRepositoryImpl implements ForumAnswerRepository {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public boolean addAnswer(ForumAnswer forumAnswer) {
		if (forumAnswer != null) {
			hibernateTemplate.saveOrUpdate(forumAnswer);
			return true;
		} else {
			return false;
		}

}

	public List<Object> updateAnswer(Integer forumAnswerId) {
		List<Object> answerContent=hibernateTemplate.find("from ForumAnswer fa where fa.forumAnswerId=?",forumAnswerId);
		return answerContent;
	}
}