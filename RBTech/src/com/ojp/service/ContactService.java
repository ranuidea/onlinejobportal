package com.ojp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ojp.dao.ContactDAO;
import com.ojp.modal.Contact;

@Service("contactService")
public class ContactService {

	@Autowired  
	 private ContactDAO contactDAO;
	public Boolean saveContact(Contact contact)
	{
		return contactDAO.saveContact(contact);
	}
}
