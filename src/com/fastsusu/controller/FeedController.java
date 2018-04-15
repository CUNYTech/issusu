package com.fastsusu.controller;

import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fastsusu.model.Feeds;
import com.fastsusu.service.FeedService;

@Controller
@RequestMapping("/feeds")
public class FeedController {

	@Autowired
	private FeedService feedService;
	
	@Autowired
    private MessageSource messageSource;

	@RequestMapping("/showFeedForm")
	public String showFriends(Model theModel, HttpServletRequest request) {

		theModel.addAttribute("feed", new Feeds());
		return "createFeed";
	}

	@RequestMapping(value = "/createFeed", method = RequestMethod.POST)
	public String createFeed(@ModelAttribute("feed") Feeds feed, Model theModel, HttpServletRequest request, Locale locale) {

		String loggedInUser = request.getUserPrincipal().getName();
		feed.setUserName(loggedInUser);
		feed.setComment(feed.getComment() + messageSource.getMessage("feeds.createion.message", null, locale));
		feed.setCreationDate(new Date());

		feedService.save(feed);

		return "createFeed";
	}
}
