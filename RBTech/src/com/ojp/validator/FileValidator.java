package com.ojp.validator;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.ojp.modal.UploadedFile;
public class FileValidator implements Validator{

	@Override
	public boolean supports(Class clazz) {
		//just validate the FileUpload instances
		return UploadedFile.class.isAssignableFrom(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
 
		UploadedFile file = (UploadedFile)target;
 
		if(file.getFile().getSize()==0){
			errors.rejectValue("file", "File required");
		}
	}
}
