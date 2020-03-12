package com.bluewater.projectm.controller.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bluewater.projectm.entity.Feedback;
import com.bluewater.projectm.entity.Guest;
import com.bluewater.projectm.repository.FeedbackRepository;
import com.bluewater.projectm.repository.GuestRepository;

@Controller(value = "feedbackController")
@RequestMapping(value = "/guest")
public class FeedbackController {
	
	@Autowired
	private GuestRepository guestRepository;
	
	
	@Autowired
	private FeedbackRepository feedbackRepository;
	
	
	@RequestMapping(method = RequestMethod.GET, value="/{id}/feedback")
	public String feedbackForm(@PathVariable(name = "id") int guestId,ModelMap model) {
		Guest guest = guestRepository.getOne(guestId);
		model.addAttribute("guestId", guest.getId());

		return"guest/feedback/form";
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/{id}/feedback")
	public String guestFeedback(@PathVariable(name = "id") int guestId,ModelMap model, Feedback feedback) {
		Guest guest = guestRepository.getOne(guestId);
		model.addAttribute("guest", guest);
		feedbackRepository.saveAndFlush(feedback);
		return"guest/bye";
	}
}
