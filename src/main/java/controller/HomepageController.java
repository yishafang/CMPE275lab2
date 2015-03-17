package controller;

import model.Homepage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomepageController {
	
	String message = "Welcome to Homepage!";
	
	//1. get homepage as HTML
	@RequestMapping("/hello")
	public ModelAndView showMessage(@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("In showMessage...");
		
		ModelAndView mv = new ModelAndView("homepage");  //determines that homepage.jsp is the target view
		mv.addObject("message", message);
		//mv.addObject("info", this.userHomepage.getUserList());
		return mv;
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	
	@RequestMapping(value = "/newUser", method = RequestMethod.GET)
	public String newUser() {
		System.out.println("new user ");
		return "addUser";
		//return new ModelAndView("newUser", "command", new Homepage("1", "ys", "f", "y@gmail.com", "CA", "sjsu", "need luck"));
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	   public String addUser(@ModelAttribute("SpringWeb")Homepage newUser, ModelMap model) {
	      model.addAttribute("id", newUser.getId());
		  model.addAttribute("firstname", newUser.getFirstname());
	      model.addAttribute("lastname", newUser.getLastname());
	      model.addAttribute("email", newUser.getEmail());
	      
	      return "afterAddUser";
	   }
	
}
