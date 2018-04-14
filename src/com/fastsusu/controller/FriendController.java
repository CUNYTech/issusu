package com.fastsusu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fastsusu.model.Friend;
import com.fastsusu.service.FriendService;
import com.fastsusu.service.UserService;

@Controller
@RequestMapping("/friends")
public class FriendController {

	@Autowired
	private FriendService friendService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/showFriends")
	public String showFriends(Model theModel, HttpServletRequest request) {

		String loggedInUser = request.getUserPrincipal().getName();
		setModel(theModel, loggedInUser);
		return "friend";
	}
	
	@RequestMapping(value = "/associateFriend", method = RequestMethod.POST)
	public String associateFriend(@ModelAttribute("friend") Friend friend, Model theModel, HttpServletRequest request) {

		String loggedInUser = request.getUserPrincipal().getName();
		String friendName = friend.getFriendName();
		
		if(friendName == null || (friendName != null && friendName.isEmpty())){
			theModel.addAttribute("friendError", "Please enter friend name.");
			setModel(theModel, loggedInUser);
			return "friend";
		}
		
		if(friendName != null && friendName.equals(loggedInUser)){
			theModel.addAttribute("friendError", "Same user can not be a friend.");
			setModel(theModel, loggedInUser);
			return "friend";
		}
		
		if(userService.findByName(friendName) == null){
			theModel.addAttribute("friendError", "Please enter valid friend name.");
			setModel(theModel, loggedInUser);
			return "friend";
		}
		
		List<Friend> assocateFriendList = friendService.findUserFriends(friendName);
		
		if(assocateFriendList.size() > 0){
			theModel.addAttribute("friendError", "User already a friend.");
		}else{
			friend.setUserName(loggedInUser);
			friendService.save(friend);
		}
		setModel(theModel, loggedInUser);
		
		return "friend";
	}
	
	private void setModel(Model theModel, String username){
		List<Friend> friends = friendService.findUserFriends(username);
		theModel.addAttribute("friends", friends);
		theModel.addAttribute("friend", new Friend());
	}

}
