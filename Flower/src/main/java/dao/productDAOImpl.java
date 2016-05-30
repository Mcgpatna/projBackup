package dao;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import models.products;

@Transactional
@Repository 
public class productDAOImpl {//implements productDAO{
	
	List<models.products> pList=new ArrayList<models.products>();
	
	
	@Autowired
    SessionFactory sessionFactory;
	public void addProduct(products p)
	{
		
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		System.out.println("Product id is : "+p.getId());
		System.out.println("Product saved successfully, Product Details="+p);
			
	}
	
	public void updateProduct(products p) 
	{
        Session session = this.sessionFactory.getCurrentSession();
        session.update(p);
        System.out.println("Product updated successfully, Product Details="+p);
    }
	public List<models.products> viewProduct()
	{
		Session session=sessionFactory.getCurrentSession();
		List<models.products> pList= session.createQuery("from products").list();  

		return pList;
	}
	public products getProductById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		products p = (products) session.load(products.class, new Integer(id));
		System.out.println("Product loaded successfully, Product details="+p);
		return p;
	}
 
	public void removeProduct(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		products p = (products) session.load(products.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		System.out.println("Product deleted successfully, person details="+p);
	}
	public Integer countProduct()
	{
		Session session = this.sessionFactory.getCurrentSession();
		Integer count = (Integer) session.createQuery("select max(id) from  products").uniqueResult();
		System.out.println("No of products : " + count);
		return count;
	}
	

}