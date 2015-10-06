/**
 * 
 */
package com.aartek.prestigepoint.service;

import com.aartek.prestigepoint.model.Registration;

/**
 * @author deepak
 * 
 */
public interface StudentRegistrationService {

	public boolean saveStudent(Registration registration);

	public Registration editStuRegs(Integer registrationId);

	public Registration stuSignIn(Registration registration);

	public boolean verifyUserEmailId(String emailId);

	public int getStudentLogin(Registration registration);

	public Registration userLogin(Registration registration);
}
