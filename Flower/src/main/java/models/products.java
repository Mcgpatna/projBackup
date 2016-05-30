package models;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Blob;
import javax.persistence.Lob;
//import javax.persistence.Column;

@Entity
public class products {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int id;
	String name;
	String description;
	String category;
	float price;
	//for picture upload 
	String status;
	@Transient
	MultipartFile  prdImage;
	String pLocation;
	
	
	/*public products(int id, String name, String description, String category,
			float price, String status) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.category = category;
		this.price = price;
		this.status = status;
	}*/
	
	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public float getPrice() {
		return price;
	}



	public void setPrice(float price) {
		this.price = price;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}

	


	


	public MultipartFile getPrdImage() {
		return prdImage;
	}



	public void setPrdImage(MultipartFile prdImage) {
		this.prdImage = prdImage;
	}
	


	public String getpLocation() {
		return pLocation;
	}



	public void setpLocation(String pLocation) {
		this.pLocation = pLocation;
	}



	public products()
	{
		
	}
	

}