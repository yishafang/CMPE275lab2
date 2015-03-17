package service;

import java.util.ArrayList;
import java.util.List;

import model.Homepage;

public class HomepageManager {
	private List<Homepage> userList;
	
	public HomepageManager() {
		userList = new ArrayList<Homepage>();
		userList.add(new Homepage("1", "ys", "f", "y@gmail.com", "CA", "sjsu", "need luck"));
		userList.add(new Homepage("2", "frank", "f", "f@gmail.com", "CA", "sjsu", "I'm a boy"));

		
	}
	
	public List<Homepage> getUserList() {
		return userList;
	}
}
