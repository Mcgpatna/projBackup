package controllers;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;


import com.google.gson.Gson;

import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

//import dao.productDAOImpl;;
import org.springframework.beans.factory.annotation.Autowired;
import service.ProductService;
import models.products;
import models.register;
import service.RegisterService;

@Controller
public class homeController {

	@Autowired
    private JavaMailSender mailSender;

	@Autowired
	ProductService p;
	
	@Autowired
	RegisterService r;
	
	private static String UPLOAD_LOCATION="E:/MCG-DT/Flower/src/main/webapp/resources/images/";
	
	//String message = "Welcome to Spring MVC!";
	
	 @RequestMapping(value="/email/{id}")//,method=RequestMethod.POST) //(value="/email")
	    public String email(@PathVariable("id") int id,Model model)
	    {
	    	System.out.println("inside email()");
	    	model.addAttribute("products",p.getProductById(id));
	    	model.addAttribute("pid",id);
	    	return "email";
	    }
	 
	@RequestMapping(value="/details/{id}",method=RequestMethod.GET)
	public String showDetails(@PathVariable("id") int id,Model model) {
		System.out.println("in showDetails() of homecontroller"+p.getProductById(id));
		System.out.println("Pruduct details "+p.getProductById(id));
		model.addAttribute("products", p.getProductById(id));
		model.addAttribute("pid", id);
		//System.out.println("Pruduct details "+p.getProductById(id));
		
		return "details";
	}
	
	 @RequestMapping(value="/Cart")//{id}",method=RequestMethod.GET)
	    public String addToCart(HttpSession ses)//@PathVariable("id") int id,Model model)
	    {
		 	String pid=(String)ses.getAttribute("pid");
	    	System.out.println("addToCart"+"  pid="+pid);
	    	
	    	//model.addAttribute("products", p.getProductById(id));
	    	ModelAndView mv = new ModelAndView();
			mv.addObject("pList",p.viewProduct());
	    	return "redirect:/productView"; //"productView";
	    }
	 
	@RequestMapping(value={"/","/index"})
	public String showIndex()
	{
		return "index";
	}
	
	//@RequestMapping("/signup")
	@RequestMapping(value = "/signup")
	public String showSignUp(Model model)
	{
		model.addAttribute("register", new register());
		System.out.println("inside showSignup(); ...");
		return "signup";
	}
	
	@RequestMapping(value="/logins", method = RequestMethod.POST)
	public String addRegister(@Valid @ModelAttribute("register") register r1, Model model,BindingResult bindingResult)
	{
		if (bindingResult.hasErrors()) 
		{
			
			return "redirect:/signup";
        }
		r.addRegister(r1);
		System.out.println("inside addRegister(); ...");
		return "redirect:/index";
		
	}
	@RequestMapping("/productDetails")
	public ModelAndView showProduct()  //public String showProduct()
	{
		List <products> prdList= new ArrayList<products>();
		prdList=p.viewProduct();
		String json = new Gson().toJson(prdList);
		System.out.println(json);
		ModelAndView mv=new ModelAndView("productDetails");
		mv.addObject("myJson",json);
		return mv; //"productDetails";
	}
	
	@RequestMapping("/productView")
	public ModelAndView dispProduct()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("pList",p.viewProduct());
		
		return mv;
	}
	
	// spring form dated 8-5-16
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	//@RequestMapping(value = "/prList", method = RequestMethod.GET)
	public String viewProduct(Model model) {
		model.addAttribute("products", new products());
		model.addAttribute("listProduct", p.viewProduct());
		model.addAttribute("pcount",p.countProduct());
		return "product";//"prList"; //return "product";
	}

		
	
	@RequestMapping(value= "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("products") products p1, Model model,Errors errors){
		System.out.println("product/add");
		
			if(p1.getPrdImage()!=null){
            if (p1.getPrdImage().getSize() == 0) 
            {
                errors.rejectValue("file", "missing.file");
            } 
            else
            {
            int pcount=p.countProduct()+1;	
			String str=p1.getPrdImage().getOriginalFilename();
			System.out.println("Str = "+str);
			int pos=str.indexOf(".");
			System.out.println("pos = "+pos);
			String str1=str.substring(pos);
			System.out.println("Str1 = "+str1);
			String str2=String.valueOf(pcount)+'a'+str1;
			//String str2=String.valueOf(p1.getId())+'a'+str1;
			System.out.println("Str2 = "+str2);
			MultipartFile obj=p1.getPrdImage();
			try{
			byte[] pimage=obj.getBytes();
			
			FileCopyUtils.copy(p1.getPrdImage().getBytes(), new File( UPLOAD_LOCATION + str2));//p1.getPrdImage().getOriginalFilename()));
			//ByteArrayOutputStream out=new ByteArrayOutputStream(pimage.length);
			FileOutputStream fos = new FileOutputStream(str2);
			
			fos.write(pimage.length);
			}
			catch(Exception e)
			{
				System.out.println("Error for image upload");
			}
		
			p1.setpLocation(UPLOAD_LOCATION+str2);
            
			
                    
			if(p1.getId() == 0){
			//new product, add it
				
				p.addProduct(p1);
			
			}
			else
			{
			//existing product, call update
			p.updateProduct(p1);
			}
            }
		}
		return "redirect:/product";
		
	}
	
	
    
    @RequestMapping("/remove/{id}")
    public String removeProduct(@PathVariable("id") int id){
		
        p.removeProduct(id);
        return "redirect:/product";
    }
 
    @RequestMapping("/edit/{id}")
    public String editProduct(@PathVariable("id") int id, Model model){
        model.addAttribute("products", p.getProductById(id));
        model.addAttribute("listProduct",  p.viewProduct());
        System.out.println("in editProduct() of homecontroller"+p.getProductById(id));
        return "product";
    }
   
   
   //for sending mail
    @RequestMapping(value="/sendEmail")//,method=RequestMethod.POST )
    public String doSendEmail(HttpServletRequest request) {
        // takes input from e-mail form
        String recipientAddress = request.getParameter("recipient");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
         
        // prints debug info
        System.out.println("To: " + recipientAddress);
        System.out.println("Subject: " + subject);
        System.out.println("Message: " + message);
         
        // creates a simple e-mail object
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(message);
         
        // sends the e-mail
        mailSender.send(email);
         
        // forwards to the view named "Result"
        return "Result";
    }
	
	
}