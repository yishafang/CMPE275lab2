package service;

import java.util.ArrayList;
import java.util.List;

import model.Homepage;

public class UserHomepage {
	private  List<Homepage> userInfo;
	
	public UserHomepage() {
		userInfo = new ArrayList<Homepage>();
		userInfo.add(new Homepage("1", "ys", "f", "y@gmail.com", "CA", "sjsu", "need luck"));
		
	}
	
	public List<Homepage> getUserList() {
		return userInfo;
	}
}
