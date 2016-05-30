package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;

@Entity
public class register {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int id;
	
	@Column(nullable = false)
	String username;
	
	@Column(nullable = false)
	@Size(min = 6, max = 15,message="Password should be of min {min} and max of {max}")
	String password;
	
	@Column(nullable = false)
	String conf_pass;
	
	@Column(nullable = false)
	String address;
	
	@Column(nullable = false)
	@Email(message="")
	String email;
	
	@Size(min=10,max=10,message="mobile no should be of {max} digits only")
	@Column(nullable = false)
	String mobileno;
	
	String role;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConf_pass() {
		return conf_pass;
	}
	public void setConf_pass(String conf_pass) {
		this.conf_pass = conf_pass;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public register()
	{
		
	}

}
