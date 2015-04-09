package controller;

import java.io.IOException;

import model.HibernateUtil;
import model.User;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.ObjectWriter;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class HomepageController {
	@RequestMapping(value = "/homepage", method = RequestMethod.GET)
	public String newUser() {
		System.out.println("new user ");
		return "addUser";
	}
	
	@RequestMapping(value = "/homepage/{id}", method = RequestMethod.GET)
	public String userHomePage(@PathVariable Long id,@RequestParam(required=false) Boolean brief,ModelMap model) {

		Session session = HibernateUtil.getSessionFactory().openSession();
		User user =null;
		try{
			  user = (User)session.get(User.class, id );
			  model.addAttribute("id", user.getId());
			  model.addAttribute("firstname", user.getFirstname());
		      model.addAttribute("lastname", user.getLastname());
		      model.addAttribute("email", user.getEmail());
		      model.addAttribute("address", user.getAddress());
		      model.addAttribute("organization", user.getOrganization());
		      model.addAttribute("aboutMyself", user.getAboutMyself());

		      if(brief==true){
					ObjectWriter ow = new ObjectMapper().writer().withDefaultPrettyPrinter();
					try {
						String json = ow.writeValueAsString(user);
						model.addAttribute("json",json);
					} catch (JsonGenerationException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (JsonMappingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return "homepage";
				}
		}
		catch(NullPointerException e){
			
		      if(user==null){
					model.addAttribute("id",id);
					return "404";
		      }
		      e.printStackTrace();
		}

      return "homepage";
	}

	@RequestMapping(value = "/homepage/{id}", method = RequestMethod.POST)
	public String updateUser(@PathVariable Long id,@ModelAttribute("SpringWeb")User user,ModelMap model) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		System.out.println("userId: "+user.getId());
		System.out.println("firstname: "+user.getFirstname());
		try{
			session.beginTransaction();
			session.saveOrUpdate(user);
			session.getTransaction().commit();
			  model.addAttribute("id", user.getId());
			  model.addAttribute("firstname", user.getFirstname());
		      model.addAttribute("lastname", user.getLastname());
		      model.addAttribute("email", user.getEmail());
		      model.addAttribute("address", user.getAddress());
		      model.addAttribute("organization", user.getOrganization());
		      model.addAttribute("aboutMyself", user.getAboutMyself());
		     
		}
		catch(Exception e){
			e.printStackTrace();
			model.addAttribute("id",id);
			return "404";
		}
		return "homepage";
	}
	
	@RequestMapping(value = "/homepage/{id}", method = RequestMethod.DELETE)
	public String deleteUser(@PathVariable Long id,ModelMap model) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		try{
			User user = new User();
			System.out.println("ID "+id);
			user.setId(id);
			session.beginTransaction();
			session.delete(user);
			session.getTransaction().commit();
		}
		catch(Exception e){
			e.printStackTrace();
			model.addAttribute("id",id);
			return "404";
		}
		return "homepage";
	}
	
	@RequestMapping(value = "/homepage", method = RequestMethod.POST)
	   public String addUser(@ModelAttribute("SpringWeb")User newUser, ModelMap model) {
		
	      Session session = HibernateUtil.getSessionFactory().openSession();
	      session.beginTransaction();
	      
	      User user = new User();
	      //user.setId(newUser.getId());
	      user.setId(newUser.getId());
	      user.setFirstname(newUser.getFirstname());
	      user.setLastname(newUser.getLastname());
	      user.setEmail(newUser.getEmail());
	      user.setAddress(newUser.getAddress());
	      user.setOrganization(newUser.getOrganization());
	      user.setAboutMyself(newUser.getAboutMyself());
	      System.out.println("firstname: "+newUser.getFirstname());
	      System.out.println("lastname: "+user.getFirstname());
	      try{
	    	  session.save(user);
		      session.getTransaction().commit();
		      
		      model.addAttribute("id", user.getId());
			  model.addAttribute("firstname", user.getFirstname());
		      model.addAttribute("lastname", user.getLastname());
		      model.addAttribute("email", user.getEmail());
		      model.addAttribute("address", user.getAddress());
		      model.addAttribute("organization", user.getOrganization());
		      model.addAttribute("aboutMyself", user.getAboutMyself());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	     
			return "redirect:http://localhost:8080/275lab2/homepage/"+user.getId();
	   }
	
}
