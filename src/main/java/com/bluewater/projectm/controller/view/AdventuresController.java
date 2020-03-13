package com.bluewater.projectm.controller.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bluewater.projectm.entity.Guest;
import com.bluewater.projectm.repository.GuestRepository;

@Controller(value = "adventuresController")
@RequestMapping(value = "/guest")
public class AdventuresController {
	
	@Autowired
	private GuestRepository guestRepository;

	
	
	
	//display adventure categories
	@RequestMapping(method = RequestMethod.GET, value = "/{guestId}/adventures")
	public String adventures(@PathVariable(name = "guestId") int guestId,ModelMap map) {
		Guest guest = guestRepository.getOne(guestId);
		map.addAttribute("guestId", guest.getId());
		return "guest/adventures/adventures-menu";
	}
	
	//displays the aquamania category of adventure
	@RequestMapping(method = RequestMethod.GET, value = "/{guestId}/adventures/aquamania")
	public String aquamania(@PathVariable(name = "guestId") int guestId,ModelMap map) {
		Guest guest = guestRepository.getOne(guestId);
		map.addAttribute("guestId", guest.getId());
		
		return "guest/adventures/aqumania";
	}
	
	
	//displays the leisure activities category of adventure
	@RequestMapping(method = RequestMethod.GET, value = "/{guestId}/adventures/activities")
	public String leisureActivities(@PathVariable(name = "guestId") int guestId,ModelMap map) {
		Guest guest = guestRepository.getOne(guestId);
		map.addAttribute("guestId", guest.getId());
		
		return "guest/adventures/activities";
	}
	
	
	
}
