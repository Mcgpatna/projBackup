package service;

import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import models.products;
import dao.productDAOImpl;

@Transactional
@Service 
public class ProductService {

	@Autowired
    productDAOImpl dao;
	
	
	@Transactional
    public List<products> viewProduct(){
    	return dao.viewProduct();
    }
    @Transactional
	public void addProduct(products p) {
		dao.addProduct(p);
	}
    
    @Transactional
	public void updateProduct(products p) {
		dao.updateProduct(p);
	}

    public products getProductById(int id) {
    	return dao.getProductById(id);
    	
    }

    public void removeProduct(int id)
    {
    	dao.removeProduct(id);
    }
    public Integer countProduct()
	{
		return dao.countProduct();
	}
}