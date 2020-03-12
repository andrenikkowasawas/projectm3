package com.bluewater.projectm.controller.view;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bluewater.projectm.entity.Dining;
import com.bluewater.projectm.entity.DiningReservation;
import com.bluewater.projectm.entity.Guest;
import com.bluewater.projectm.entity.Reservation;
import com.bluewater.projectm.entity.Services;
import com.bluewater.projectm.entity.SpaReservation;

import com.bluewater.projectm.repository.GuestRepository;
import com.bluewater.projectm.repository.ReservationRepository;
import com.bluewater.projectm.repository.ServicesRepository;
import com.bluewater.projectm.repository.SpaReservationRepository;

@Controller(value = "amumaSpaController")
@RequestMapping(value = "/guest")
public class AmumaSpaController {

	
	@Autowired
	private GuestRepository guestRepository;
	
	@Autowired
	private SpaReservationRepository spaReservationRepository;
	
	
	
	@Autowired
	private ReservationRepository reservationRepository;
	
	@Autowired
	private ServicesRepository servicesRepository;

	
	@RequestMapping(method = RequestMethod.GET, value = "/amumaspa/{guestId}/{serviceId}")
	public String showServiceInfo(@PathVariable(name = "serviceId") int serviceId, @PathVariable(name = "guestId") int guestId,
			ModelMap map) {
		Services  service = servicesRepository.getOne(serviceId);
		Guest guest = guestRepository.getOne(guestId);
		
		map.addAttribute("guestId", guest.getId());
		
		map.addAttribute("service", service);
		
		return "guest/amumaspa/serviceinfo";
	}
	
	
	@RequestMapping(method = RequestMethod.GET, value = "/amumaspa/{guestId}/{serviceId}/addreservation")
	public String showSpaReservationForm(@PathVariable(name = "serviceId") int serviceId, @PathVariable(name = "guestId") int guestId,
			ModelMap map) {

		Services  service = servicesRepository.getOne(serviceId);
		Guest guest = guestRepository.getOne(guestId);
		map.addAttribute("guest", guest);
		map.addAttribute("service", service);
		return "guest/amumaspa/addSpaReservationForm";
	}

	
	@RequestMapping(method = RequestMethod.POST, value = "/amumaspa/reservation/{guestId}/{serviceId}")
	public String addSpaTherapyReservation(@PathVariable(name = "serviceId") int serviceId, @PathVariable(name = "guestId") int guestId,
			ModelMap map, SpaReservation sr ) {
		
		Services service = servicesRepository.getOne(serviceId);
		Guest guest = guestRepository.getOne(guestId);
		sr.setServices(service);
		sr.setGuest(guest);
		sr.setStatus("Open");
		spaReservationRepository.saveAndFlush(sr);
		map.addAttribute("sr", sr);
		map.addAttribute("guestId", guest.getId());
		return "guest/amumaspa/spaReservationView";
	}

	
	@RequestMapping(method = RequestMethod.GET, value="/{id}/relax/spa")
	public String spa(@PathVariable(name="id") int guestId, ModelMap map,
			Services services) {
		Guest guest  = guestRepository.getOne(guestId);
		map.addAttribute("servicesList", servicesRepository.findAll() );
		map.addAttribute("guestId", guest.getId());
		return"guest/amumaspa/signatureTherapies";
	}

	@RequestMapping(method = RequestMethod.GET, value="/{id}/relax/gym")
	public String gym(@PathVariable(name="id") int guestId, ModelMap map) {
		Guest guest  = guestRepository.getOne(guestId);
		map.addAttribute("guestId", guest.getId());

		return "guest/amumaspa/gym";
	}
	

	

	
	//SALON
	@RequestMapping(method = RequestMethod.GET, value="/{id}/relax/salon")
	public String salon(@PathVariable(name="id") int guestId, ModelMap map) {
		Guest guest  = guestRepository.getOne(guestId);
		map.addAttribute("guestId", guest.getId());

		return "guest/amumaspa/salon";
	}
	
	

	
	@InitBinder
	public void initBinder(final WebDataBinder binder) {
	    binder.initDirectFieldAccess();
	   final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	   dateFormat.format(new Date());
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
	
}
