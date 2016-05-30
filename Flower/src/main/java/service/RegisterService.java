package service;


import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import models.products;
import models.register;
import dao.productDAOImpl;
import dao.registerDAOImpl;;

@Transactional
@Service 
public class RegisterService {
	
	@Autowired
    registerDAOImpl rdao;
	
	@Transactional
	public void addRegister(register r) 
	{
			rdao.addRegister(r);
	}

}
