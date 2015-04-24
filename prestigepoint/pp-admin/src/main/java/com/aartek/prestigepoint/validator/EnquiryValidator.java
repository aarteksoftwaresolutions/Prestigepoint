package com.aartek.prestigepoint.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import com.aartek.prestigepoint.model.Enquiry;

@Component
public class EnquiryValidator {

	public boolean supports(Class<?> clazz) {
		return Enquiry.class.isAssignableFrom(clazz);
	}
	
	public void validate(Object target, Errors errors) {
		  ValidationUtils.rejectIfEmpty(errors, "date", "error.enquiry.empty");

} 
}
