package com.ojp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ojp.dao.UserDAO;
import com.ojp.modal.User;

@Service
public class UserService {

	@Autowired
    private UserDAO repository;
	
	@Transactional
    public User registerNewUserAccount(User user) throws Exception {
        //if (emailExist(accountDto.getEmail())) {  
            //throw new Exception("There is an account with that email adress: ");
            
            //User user = new User();    
            //user.setUserName(accountDto.getUserName());
            //user.setLastName(accountDto.getLastName());
            //user.setPassword(accountDto.getPassword());
            //user.setEmail(accountDto.getEmail());
            //user.setRole(new Role(Integer.valueOf(1), user));
            return repository.saveUser(user); 
        //}
        
        // the rest of the registration operation
    }
    /*private boolean emailExist(String email) {
        User user = repository.findByEmail(email);
        if (user != null) {
            return true;
        }
        return false;
    }*/
	
	@Transactional
    public User registerNewCandidateUserAccount(User user, String firstName, String lastName) {
        //if (emailExist(accountDto.getEmail())) {  
            //throw new Exception("There is an account with that email adress: ");
            
            //User user = new User();    
            //user.setUserName(accountDto.getUserName());
            //user.setLastName(accountDto.getLastName());
            //user.setPassword(accountDto.getPassword());
            //user.setEmail(accountDto.getEmail());
            //user.setRole(new Role(Integer.valueOf(1), user));
            return repository.saveCandidateUser(user, firstName, lastName); 
        //}
        
        // the rest of the registration operation
    }
	
	@Transactional
	public User registerNewCompanyUserAccount(User user, String companyName, String contactPerson, String phoneNo)
	{
		return repository.saveCompanyUser(user, companyName, contactPerson, phoneNo);
	}
	
	}
