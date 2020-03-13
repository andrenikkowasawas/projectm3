package com.bluewater.projectm.controller.view;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bluewater.projectm.entity.Dining;
import com.bluewater.projectm.entity.Guest;
import com.bluewater.projectm.entity.ResortServices;
import com.bluewater.projectm.entity.Room;
import com.bluewater.projectm.entity.ThemedDiner;

import com.bluewater.projectm.repository.DiningRepository;
import com.bluewater.projectm.repository.EventsRepository;
import com.bluewater.projectm.repository.GuestRepository;
import com.bluewater.projectm.repository.InRoomDiningMenuRepository;
import com.bluewater.projectm.repository.ResortServicesRepository;
import com.bluewater.projectm.repository.RoomRepository;
import com.bluewater.projectm.repository.ThemedDinerRepository;
import com.bluewater.projectm.service.GuestService;

import net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional;

@Controller(value = "guestController")
@RequestMapping(value = "/guest")
public class GuestController {

	@Autowired
	private RoomRepository roomRepository;
	
	@Autowired
	private GuestRepository guestRepository;
	
	@Autowired
	private DiningRepository diningRepository;
	
	@Autowired
	private ThemedDinerRepository themedDinerRepository;
	
	@Autowired
	private ResortServicesRepository resortServicesRepository;
	
	@Autowired
	private InRoomDiningMenuRepository inRoomDiningMenuRepository;
	
	@Autowired
	private EventsRepository eventsRepository;
	

	
	
//ROOM
	//	displays the welcome page 
	@RequestMapping(method = RequestMethod.GET, value="/roomid/{id}")
	public String welcomeGuest(@PathVariable(name="id") int roomId,ModelMap map) {
		Room room = roomRepository.findById(roomId);
		Guest guest = guestRepository.getOne(room.occupyingGuest);
		map.addAttribute("guest", guest.getGuestFirstname());
		map.addAttribute("guestId", guest.getId());

		return "guest/welcomex";
		
	}
	
	//goes to menu page
	@RequestMapping(method = RequestMethod.GET, value="/{id}/menu")
	public String goToMenu(@PathVariable(name = "id") int guestId, ModelMap map) {
		Guest guest = guestRepository.getOne(guestId);
		Date date = new Date();
		map.addAttribute("datenow", date.toString());
		map.addAttribute("guestId", guest.getId());
		map.addAttribute("guestName", guest.getGuestFirstname());
		return "guest/menu";
	}
	
	
	
//INROOM-MENU
	//display lists of in room menu
	@RequestMapping(method = RequestMethod.GET, value="/in-room-menu-list/{id}")
	public String inRoomMenuList(@PathVariable(name = "id") int guestId,ModelMap map, Dining dining, ThemedDiner themedDiner) {
		
		Guest guest = guestRepository.getOne(guestId);
		map.addAttribute("guestId", guest.getId());
		map.addAttribute("inroomdiningmenulist", inRoomDiningMenuRepository.findAll());
		return "guest/inroommenu/menuView";
	}
	
	
	//display dining dashbaord
	@RequestMapping(method = RequestMethod.GET, value="/diningList/{id}/dining-dashboard")
	public String diningDashboard(@PathVariable(name = "id") int guestId,ModelMap map, Dining dining, ThemedDiner themedDiner) {
		
		Guest guest = guestRepository.getOne(guestId);
		map.addAttribute("guestId", guest.getId());
		map.addAttribute("diningList", diningRepository.findByNotDeleted() );
		map.addAttribute("themedDinerList", themedDinerRepository.findByNotDeleted() );
        map.addAttribute("inroomdiningmenulist", inRoomDiningMenuRepository.findAll() );

		
		return "guest/dining/dining-dashboard";
	}
	
	//display relax menu
	@RequestMapping(method = RequestMethod.GET, value="/{id}/relax-menu")
	public String relaxMenu(@PathVariable(name = "id") int guestId,ModelMap map) {
		Guest guest = guestRepository.getOne(guestId);
		map.addAttribute("guestId", guest.getId());
		return"guest/amumaspa/relax-menu";
	}
	
	//RESORT SERVICES
	//display lists of resort services
	@RequestMapping(method = RequestMethod.GET, value="/{id}/resort-services")
	public String showResortServices(@PathVariable(name = "id") int guestId,ModelMap model, ResortServices resortServices) {
		Guest guest = guestRepository.getOne(guestId);
		model.addAttribute("guestId", guest.getId());
		model.addAttribute("resortServiceList", resortServicesRepository.findByNotDeleted());
		return "guest/resortservices/resortserviceslist";
	}
	
	//EVENTS
	//display lists of events
	@RequestMapping(method = RequestMethod.GET, value="/{id}/events")
	public String events(@PathVariable(name = "id") int guestId,ModelMap map) {
			Guest guest = guestRepository.getOne(guestId);
			map.addAttribute("guestId", guest.getId());
			map.addAttribute("events", eventsRepository.findByNotDeleted());
			return"guest/events/menu";
		}
	

	
}
