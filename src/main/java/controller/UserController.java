package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import service.HomepageManager;

public class UserController implements Controller {
	private HomepageManager homepageManager;
	
	public HomepageManager getHomepageManager() {
		return homepageManager;
	}
	
	public void setHomepageManager(HomepageManager homepageManager) {
		this.homepageManager = homepageManager;
	}
	
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		System.out.println("in HomepageController");
		ModelAndView mv = new ModelAndView("userList");
		mv.addObject("userList", this.homepageManager.getUserList());
		return mv;
	}
}
