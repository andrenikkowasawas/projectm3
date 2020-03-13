package com.bluewater.projectm.controller.view;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bluewater.projectm.entity.Dining;
import com.bluewater.projectm.entity.DiningReservation;
import com.bluewater.projectm.entity.Guest;
import com.bluewater.projectm.entity.InRoomDiningMenu;
import com.bluewater.projectm.entity.InRoomOrder;
import com.bluewater.projectm.entity.ThemedDiner;
import com.bluewater.projectm.entity.ThemedDinerReservation;
import com.bluewater.projectm.repository.DiningRepository;
import com.bluewater.projectm.repository.DiningReservationRepository;
import com.bluewater.projectm.repository.GuestRepository;
import com.bluewater.projectm.repository.InRoomDiningMenuRepository;
import com.bluewater.projectm.repository.InRoomOrderRepository;
import com.bluewater.projectm.repository.ThemedDinerRepository;
import com.bluewater.projectm.repository.ThemedDinerReservationRepository;
@Controller(value = "diningController")
@RequestMapping(value = "/guest")
public class DiningController {
	

	
	@Autowired
	private DiningRepository diningRepository;
	
	@Autowired
	private GuestRepository guestRepository;
	
	@Autowired
	private DiningReservationRepository diningReservationRepository;
	
	@Autowired
	private ThemedDinerReservationRepository themedDinerReservationRepository;
	
	@Autowired
	private ThemedDinerRepository themedDinerRepository;
	
	@Autowired
	private InRoomOrderRepository inRoomOrderRepository;
	
	@Autowired
	private InRoomDiningMenuRepository inRoomDiningMenuRepository;
	
	
	
	//show restaurant reservation form
	@RequestMapping(method = RequestMethod.GET, value = "/diningList/{diningId}/{guestId}")
	public String showDiningReservationForm(@PathVariable(name = "diningId") int diningId, @PathVariable(name = "guestId") int guestId, ModelMap map) {

		Dining dining = diningRepository.getOne(diningId);
		Guest guest = guestRepository.getOne(guestId);
		map.addAttribute("guestFirstName", guest.getGuestFirstname());
		map.addAttribute("guestLastName", guest.getGuestLastname());

		map.addAttribute("dininingId", dining.getId());
		map.addAttribute("guestId", guest.getId());
		map.addAttribute("diningName", dining.getDiningName());
		return "guest/dining/addDiningReservationForm";
	}
	

	

//save restaurant reservation
	@RequestMapping(method = RequestMethod.POST, value = "/dining/reservation/{diningId}/{guestId}")
	public String addDiningReservation(@PathVariable(name = "diningId") int diningId, @PathVariable(name = "guestId") int guestId,ModelMap map, DiningReservation dr) {
		Dining dining = diningRepository.getOne(diningId);
		Guest guest = guestRepository.getOne(guestId);
		dr.setDining(dining);
		dr.setGuest(guest);
		dr.setStatus("Open");
		diningReservationRepository.saveAndFlush(dr);
		map.addAttribute("dr", dr);
		return "guest/dining/diningReservationView";
	}
	

	

	
//THEMEDDINERRESERVATION
	//show themed dinner reservation form
	@RequestMapping(method = RequestMethod.GET, value = "/themedDiners/{themedDinerId}/{guestId}")
	public String showThemedDinerReservationForm(@PathVariable(name = "themedDinerId") int themedDinerId, @PathVariable(name = "guestId") int guestId, ModelMap map) {

		ThemedDiner themedDiner = themedDinerRepository.getOne(themedDinerId);
		Guest guest = guestRepository.getOne(guestId);
		map.addAttribute("guest", guest);
		map.addAttribute("themedDiner", themedDiner);
		return "guest/themedDiner/addThemedDinerReservationForm";
	}
	
	
	//save themed dinner reservation
	@RequestMapping(method = RequestMethod.POST, value = "/themed-diner/reservation/{themedDinerId}/{guestId}")
	public String addThemedDinerReservation(@PathVariable(name = "themedDinerId") int themedDinerId, @PathVariable(name = "guestId") int guestId,ModelMap map, ThemedDinerReservation tdr ) {
		ThemedDiner themedDiner = themedDinerRepository.getOne(themedDinerId);
		Guest guest = guestRepository.getOne(guestId);
		tdr.setThemedDiner(themedDiner);
		tdr.setGuest(guest);
		tdr.setStatus("Open");
		themedDinerReservationRepository.saveAndFlush(tdr);
		map.addAttribute("tdr", tdr);
		map.addAttribute("guest", guest);
	
		return "guest/themedDiner/themedDinerReservationView";
	}
	
//IN-ROOM ORDER
	//shows in room order form
	@RequestMapping(method = RequestMethod.POST, value="/inRoomMenu/{id}/{menuName}/{guestId}")
	public String orderInRoomForm(@PathVariable(name="guestId") int guestId,@PathVariable(name="id") int menuId,@PathVariable(name="menuName") String menuName,@RequestParam int Orders, ModelMap map,InRoomOrder iro ) {
		Guest guest = guestRepository.getOne(guestId);
		InRoomDiningMenu inRoomDiningMenu=inRoomDiningMenuRepository.getOne(menuId);
		int Price=inRoomDiningMenu.getMenuPrice();
		int totalPrice=Orders*Price;
		map.addAttribute("guest", guest);
		map.addAttribute("Orders", Orders);	
		map.addAttribute("menuName", menuName);
		map.addAttribute("menuId", menuId);
		map.addAttribute("menuPrice",totalPrice);
		return "guest/inroommenu/inRoomOrderForm";
	}
	
	//save in room order
	@RequestMapping(method= RequestMethod.POST, value="/inRoomMenu/Order/{menuId}/{Orders}/{guestId}/{totalPrice}")
	public String inRoomOrder(@PathVariable(name = "guestId") int guestId,@PathVariable(name="menuId") int menuId,@PathVariable(name="Orders") int Orders,@PathVariable(name="totalPrice") int totalPrice, ModelMap map,InRoomOrder iro) {
		Guest guest=guestRepository.getOne(guestId);
		InRoomDiningMenu inRoomDiningMenu=inRoomDiningMenuRepository.getOne(menuId);
		
		iro.setGuest(guest);
		iro.setNoOfOrders(Orders);
		iro.setInRoomDiningMenu(inRoomDiningMenu);
		iro.setTotalAmount(totalPrice);
		iro.setStatus("Preparing");
		inRoomOrderRepository.saveAndFlush(iro);
		map.put("ordernumber", Orders);
		return "guest/inroommenu/inRoomOrderView";
	}
	
	

	
	@InitBinder
	public void initBinder(final WebDataBinder binder) {
	    binder.initDirectFieldAccess();

	   final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	   dateFormat.format(new Date());
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
	

}


