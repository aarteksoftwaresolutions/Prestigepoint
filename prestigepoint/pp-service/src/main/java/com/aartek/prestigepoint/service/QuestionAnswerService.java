package com.aartek.prestigepoint.service;

import java.util.List;

import com.aartek.prestigepoint.model.QuestionAnswer;
import com.aartek.prestigepoint.model.Subject;

public interface QuestionAnswerService {

	public List<Subject> getAllSubjectName();

	public boolean saveQuestionAndAnswer(QuestionAnswer questionAnswer);

	public List<QuestionAnswer> getQuestionAndAnswer(Integer subjectId);

}
