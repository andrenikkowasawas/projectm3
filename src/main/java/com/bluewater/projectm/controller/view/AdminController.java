package com.bluewater.projectm.controller.view;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bluewater.projectm.entity.Dining;
import com.bluewater.projectm.entity.DiningReservation;
import com.bluewater.projectm.entity.Events;
import com.bluewater.projectm.entity.Feedback;
import com.bluewater.projectm.entity.Guest;
import com.bluewater.projectm.entity.InRoomDiningCategory;
import com.bluewater.projectm.entity.InRoomDiningMenu;
import com.bluewater.projectm.entity.InRoomOrder;
import com.bluewater.projectm.entity.ResortServices;
import com.bluewater.projectm.entity.Room;
import com.bluewater.projectm.entity.Services;
import com.bluewater.projectm.entity.SpaReservation;
import com.bluewater.projectm.entity.ThemedDiner;
import com.bluewater.projectm.entity.ThemedDinerReservation;
import com.bluewater.projectm.repository.DiningRepository;
import com.bluewater.projectm.repository.DiningReservationRepository;
import com.bluewater.projectm.repository.EventsRepository;
import com.bluewater.projectm.repository.FeedbackRepository;
import com.bluewater.projectm.repository.GuestRepository;
import com.bluewater.projectm.repository.InRoomDiningCategoryRepository;
import com.bluewater.projectm.repository.InRoomDiningMenuRepository;
import com.bluewater.projectm.repository.InRoomOrderRepository;
import com.bluewater.projectm.repository.ReservationRepository;
import com.bluewater.projectm.repository.ResortServicesRepository;
import com.bluewater.projectm.repository.RoomRepository;
import com.bluewater.projectm.repository.ServicesRepository;
import com.bluewater.projectm.repository.SpaReservationRepository;
import com.bluewater.projectm.repository.ThemedDinerRepository;
import com.bluewater.projectm.repository.ThemedDinerReservationRepository;

@Controller(value = "adminController")
@RequestMapping(value = "/admin")
public class AdminController {
	
	public static final String uploadingDir = System.getProperty("user.dir") + "/src/main/resources/static/uploads/";
	
	@Autowired
	private RoomRepository roomRepository;
	
	@Autowired
	private GuestRepository guestRepository;
	
	@Autowired
	private DiningRepository diningRepository;
	
	@Autowired
	private ThemedDinerRepository themedDinerRepository;
	

	
	@Autowired
	private InRoomDiningCategoryRepository inRoomDiningCategoryRepository;
	
	@Autowired
	private InRoomDiningMenuRepository inRoomDiningMenuRepository;
	
	@Autowired
	private ResortServicesRepository resortServicesRepository;
	
	@Autowired
	private EventsRepository eventsRepository;
	
	@Autowired
	private InRoomOrderRepository inRoomOrderRepository;
	
	@Autowired
	private FeedbackRepository feedBackRepository;
	
	@Autowired
	private DiningReservationRepository drr;
	@Autowired
	private ThemedDinerReservationRepository tdr;
	
	@Autowired
	private ServicesRepository servicesRepository;
	
	@Autowired
	private SpaReservationRepository srr;
	
	
	
	
//ROOM/GUEST
	@RequestMapping(method = RequestMethod.GET, value="/home")
	public String adminHome(ModelMap map,Room room) {
		map.addAttribute("dashboardList",roomRepository.findByNotDeleted());

		return "admin/home";
	}
	
	//add room
	@RequestMapping(method = RequestMethod.POST, value="/roomInfo")
	public String saveRoom(ModelMap map, Room room, @RequestParam String roomNo) {
		roomRepository.saveAndFlush(room);
		map.put("roomNo", roomNo);
		return "redirect:/admin/home";
	}
	
	
	
	//shows guest details of each room
	@RequestMapping(method = RequestMethod.GET, value="/room/{roomId}")
	public String roomGuest (@PathVariable (name="roomId") int roomId, ModelMap map,  DiningReservation dr, Dining dining ) {
		Room room =roomRepository.getOne(roomId);
		Guest guest=guestRepository.getOne(room.getOccupyingGuest());
		map.addAttribute("room", room);
		map.addAttribute("guest", guest);	
		
		return"admin/roomGuest";
	}
	
	
	
	
	//checks out guest
	@RequestMapping(method=RequestMethod.GET, value="/room/{roomId}/guest/checkout")
	public String checkoutGuest(@PathVariable(name="roomId")int id, ModelMap map) {
		
		Room room=roomRepository.getOne(id);
		room.setOccupyingGuest(0);
		roomRepository.save(room);
		map.addAttribute("dashboardList",roomRepository.findByNotDeleted());
		
		return "redirect:/admin/home";
	}
	
	
	//add guest
	@RequestMapping(method = RequestMethod.POST, value="/room/{room.id}/guest/view")
	public String saveGuest(@PathVariable (name="room.id") int id,ModelMap map, Room room, Guest guest, @RequestParam String guestFirstname, @RequestParam 
			String guestLastname, @RequestParam String guestAge, @RequestParam String guestGender, 
			@RequestParam String guestNationality, @RequestParam String guestPhoneNum, 
			@RequestParam String guestEmailAddress) {
		
		map.addAttribute("room", roomRepository.findByNotDeleted());	
		Guest guestToOccupy= guestRepository.saveAndFlush(guest);
		Room roomToOccupy=roomRepository.getOne(id);
		roomToOccupy.setOccupyingGuest(guestToOccupy.getId());
		roomRepository.save(roomToOccupy);
		
		
		return "redirect:/admin/room/{room.id}/";
	}
	
	
//DASHBOARD	
	@RequestMapping(method = RequestMethod.GET, value="/dashboard")
	public String showDashboard(ModelMap map,Room room, Guest guest, Feedback feedback) {
		map.addAttribute("guest",guestRepository.findAll());
		//guest Gender
		map.addAttribute("maleGuest",guestRepository.countByGuestGender("Male"));
		map.addAttribute("femaleGuest",guestRepository.countByGuestGender("Female"));
		//end guest Gender
		map.addAttribute("excellent", feedBackRepository.countExcellent());
		map.addAttribute("good", feedBackRepository.countGood());
		map.addAttribute("average", feedBackRepository.countAverage());
		map.addAttribute("poor", feedBackRepository.countPoor());
		map.addAttribute("verypoor", feedBackRepository.countVeryPoor());

		
		//Nationality
		map.addAttribute("filipino",guestRepository.countByGuestNationality("Filipino"));
		map.addAttribute("chinese",guestRepository.countByGuestNationality("Chinese"));
		map.addAttribute("korean",guestRepository.countByGuestNationality("Korean"));
		map.addAttribute("japanese",guestRepository.countByGuestNationality("Japanese"));
		map.addAttribute("american",guestRepository.countByGuestNationality("American"));
		map.addAttribute("others",guestRepository.countByGuestNationality("others"));
		//END Nationality
		
		map.addAttribute("twentyBelow",guestRepository.countByGuestAgeTwentyBelow());
		map.addAttribute("twentyTotwentyFive",guestRepository.countByGuestAgeTwentytoTwentyFive());
		map.addAttribute("twentySixToThirty",guestRepository.countByGuestAgeTwentySixToThirty());
		map.addAttribute("thirtyOneToThirtyFive",guestRepository.countByGuestAgeThirtyOneToThirtyFive());
		map.addAttribute("thirtySixToForty",guestRepository.countByGuestAgeThirtySixToForty());
		map.addAttribute("fortyOneToFortyFive",guestRepository.countByGuestAgeFortyOneToFortyFive());
		map.addAttribute("fortySixToFifty",guestRepository.counByGuestAgeFortySixToFifty());
		map.addAttribute("fiftyAbove",guestRepository.countByGuestAgeFiftyAbove());
		
		
		return "admin/dashboard";
	}
	
	
	
	//display lists of restaurants and themed dinners
	@RequestMapping(method = RequestMethod.GET, value="/diningList")
	public String diningList(ModelMap map, Dining dining, ThemedDiner themedDiner) {
		
		map.addAttribute("diningList", diningRepository.findByNotDeleted());
		map.addAttribute("tdList", themedDinerRepository.findByNotDeleted());
		return "admin/diningList";
	}
	
	
	//add restaurant
	@RequestMapping(method = RequestMethod.POST, value="/dininginfo")
	public String saveDining(ModelMap map, Dining dining, @RequestParam String diningName,
			@RequestParam String diningDescription, @RequestParam MultipartFile imgFile) throws IllegalStateException, IOException {
		
		dining.setImgFilePath(imgFile.getOriginalFilename());
		diningRepository.saveAndFlush(dining);
		map.put("diningName", diningName);
		map.put("diningDescription", diningDescription);
		map.put("imgFile", dining.getImgFilePath());
		 
		
		 File file = new File(uploadingDir + imgFile.getOriginalFilename());
		 imgFile.transferTo(file);
		return "redirect:/admin/diningList";
	}
	
	
	//deletes restaurant
	@RequestMapping(method=RequestMethod.GET, value="/dining/delete/{id}")
	public String diningRemove(ModelMap map, @PathVariable(name="id") int id) {
		
		Dining dining=diningRepository.findById(id);
		dining.setDeleted();
		diningRepository.saveAndFlush(dining);
		map.addAttribute("diningList", diningRepository.findByNotDeleted());
		map.addAttribute("tdList", themedDinerRepository.findByNotDeleted());
		return "admin/diningList";
	}
	
	
	//display dining update form
	@RequestMapping(method=RequestMethod.GET, value="/dining/update/{id}")
	public String diningUpdateForm(ModelMap map, @PathVariable(name="id") int id) {
		
		map.addAttribute("dining",diningRepository.findById(id));		
		return "admin/updateDining";
	}
	
	
	//updates restaurant
	@RequestMapping(method=RequestMethod.POST, value="/dining/{id}/updated")
	public String diningUpdate(ModelMap map, @PathVariable(name="id") int id, Dining dining) {
		
		
		dining.setImgFilePath(diningRepository.findById(id).getImgFilePath());
		dining.setId(id);
		diningRepository.saveAndFlush(dining);
		map.addAttribute("diningList", diningRepository.findByNotDeleted());
		map.addAttribute("tdList", themedDinerRepository.findByNotDeleted());
		
		return "admin/diningList";
	}
	
	//delete dining reservation
	@RequestMapping(method=RequestMethod.GET, value="/dining/reservation/all/delete/{diningReservationId}")
	public String deleteDiningReservation(@PathVariable(name="diningReservationId") int diningReservationId, ModelMap map) {
		drr.deleteById(diningReservationId);
		
		map.addAttribute("diningReservations", drr.getAllDiningReservation());
		return "redirect:/admin/allDiningReservations";
	}
	
	//update dining reservation
	@RequestMapping(method=RequestMethod.GET, value="/dining/reservation/all/update/{diningReservationId}")
	public String updateDiningReservation(@PathVariable(name="diningReservationId") int diningReservationId, ModelMap map) {
	
		DiningReservation temp = drr.getOne(diningReservationId);
		temp.setStatus("Seated");
		drr.saveAndFlush(temp);
		map.addAttribute("diningReservations", drr.getAllDiningReservation());
		
		return "redirect:/admin/allDiningReservations";
	}
	
	
	//display lists of reservations
	@RequestMapping(method = RequestMethod.GET, value="/allDiningReservations")
	public String diningReservationsList(ModelMap map, DiningReservation diningReservation, Dining dining, Guest guest) {
			map.addAttribute("diningReservations", drr.getAllDiningReservation());
			return"admin/allDiningReservations";
		}
	
	
//THEMED-DINER	
	//deletes themed dinner
	@RequestMapping(method=RequestMethod.GET, value="/themedDinerRemove/{id}")
	public String themedDinerRemove(ThemedDiner themedDiner,ModelMap map, @PathVariable(name="id") int id) {
		
		themedDiner = themedDinerRepository.findById(id);
		themedDiner.setDeleted();
		themedDinerRepository.saveAndFlush(themedDiner);
		map.addAttribute("diningList", diningRepository.findByNotDeleted());
		map.addAttribute("tdList", themedDinerRepository.findByNotDeleted());
		
		return "admin/diningList";
	}
	
	
	//shows themed dinner update form
	@RequestMapping(method=RequestMethod.GET, value="/themedDinerUpdate/{id}")
	public String themedDinerUpdateForm(ThemedDiner themedDiner,ModelMap map, @PathVariable(name="id") int id) {
		
		map.addAttribute("themedDinerList", themedDinerRepository.findById(id));
		return "admin/updateThemedDiner";
	}
	
	
	//updates themed dinner
	@RequestMapping(method=RequestMethod.POST, value="/themedDiner/{id}/updated")
	public String themedDinerUpdate(ThemedDiner themedDiner,ModelMap map, @PathVariable(name="id") int id) {
		
		themedDiner.setImgFilePath(themedDinerRepository.findById(id).getImgFilePath());
		themedDiner.setId(id);
		themedDinerRepository.saveAndFlush(themedDiner);
		map.addAttribute("diningList", diningRepository.findByNotDeleted());
		map.addAttribute("tdList", themedDinerRepository.findByNotDeleted());
		
		return "admin/diningList";
	}
	
	
	//displays lists of themed dinners
	@RequestMapping(method = RequestMethod.GET, value="/themedDinerList")
	public String themedDinerList( ThemedDiner themedDiner,ModelMap map ) {
		
		map.addAttribute("themedDinerList", themedDinerRepository.findByNotDeleted());
		
		return "admin/themedDinerlist";
	}

	
	// add themed dinner
	@RequestMapping(method = RequestMethod.POST, value="/themedDiner/view")
	public String saveThemedDiner(
			ThemedDiner themedDiner, ModelMap map, @RequestParam String themedDinerName, @RequestParam String themedDinerAvailability,
			@RequestParam String rate, @RequestParam String description,  @RequestParam MultipartFile imgFile) throws IllegalStateException, IOException {
		
		themedDiner.setImgFilePath(imgFile.getOriginalFilename());
		themedDinerRepository.saveAndFlush(themedDiner);
		 File file = new File(uploadingDir + imgFile.getOriginalFilename());
		 imgFile.transferTo(file);
	
	return "redirect:/admin/diningList";
	}
	
	
	//delete themed dinner reservation
	@RequestMapping(method=RequestMethod.GET, value="/themedDiner/reservation/all/delete/{themedDinerReservationId}")
	public String deleteThemedDinerReservation(@PathVariable(name="themedDinerReservationId") int themedDinerReservationId, ModelMap map) {
		tdr.deleteById(themedDinerReservationId);
		
		map.addAttribute("tdReservations", tdr.getAllThemedDinerReservation() );
		return "redirect:/admin/themedDinerReservations";
	}
	
	
	
	//update themed dinner reservation
	@RequestMapping(method=RequestMethod.GET, value="/themedDiner/reservation/all/update/{themedDinerReservationId}")
	public String updateThemedDinerReservation(@PathVariable(name="themedDinerReservationId") int themedDinerReservationId, ModelMap map) {
	
		ThemedDinerReservation temp = tdr.getOne(themedDinerReservationId);
		temp.setStatus("Seated");
		tdr.saveAndFlush(temp);
		map.addAttribute("tdReservations", tdr.getAllCurrentThemedDinerReservation());
		
		return "redirect:/admin/themedDinerReservations";
	}
	
	//display lists of themed dinner reservations
	@RequestMapping(method=RequestMethod.GET, value="/themedDinerReservations")
	public String themedDinerReservationList(ModelMap  map, ThemedDinerReservation themedDinerRservation, ThemedDiner themedDiner, Guest guest) {
		map.addAttribute("tdReservations", tdr.getAllThemedDinerReservation() );
		return"admin/themedDinerReservations";
	}

	
	
	
//IN-ROOM-DINING	
	@RequestMapping(method = RequestMethod.POST, value="/in-room-dining-category-list/{id}/in-room-dining-menu/view")
	public String saveInRoomDiningCategory(@PathVariable(name="id") int inRoomDiningCategoryId,  InRoomDiningCategory inRoomDiningCategory,
			InRoomDiningMenu inRoomDiningMenu, ModelMap map, @RequestParam String menuName, @RequestParam int menuPrice,
			@RequestParam String menuDescription, @RequestParam MultipartFile imgFile) throws IllegalStateException, IOException {
		
		
		InRoomDiningCategory cat = inRoomDiningCategoryRepository.findById(inRoomDiningCategoryId);
		inRoomDiningMenu.setImgFilePath(imgFile.getOriginalFilename());
		InRoomDiningMenu inRoomDiningMenuToBeAdd= new InRoomDiningMenu();
		inRoomDiningMenuToBeAdd.setImgFilePath(imgFile.getOriginalFilename());
		inRoomDiningMenuToBeAdd.setMenuName(menuName);
		inRoomDiningMenuToBeAdd.setMenuPrice(menuPrice);
		inRoomDiningMenuToBeAdd.setMenuDescription(menuDescription);
		inRoomDiningMenuToBeAdd.setInRoomDiningCategory(cat);
		
		inRoomDiningMenuRepository.save(inRoomDiningMenuToBeAdd);
		map.put("menuName", menuName);
		map.put("menuPrice", menuPrice);
		map.put("menuDescription", menuDescription);
		map.put("imgFile", imgFile.getOriginalFilename());
		
		File file = new File(uploadingDir + imgFile.getOriginalFilename());
		 imgFile.transferTo(file);
		return "admin/inroomdiningmenuview";
	}

	
	
	@RequestMapping(method = RequestMethod.GET, value="/in-room-dining-category/add")
	public String showAddInRoomDiningCategoryForm() {
		
		return"admin/addInRoomDiningCategory";
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/in-room-dining-category-list/remove/{id}")
	public String inRoomDiningCategoryRemove(ModelMap map, @PathVariable(name="id") int id) {
		
		InRoomDiningCategory inRoomDiningCategory=inRoomDiningCategoryRepository.findById(id);
		inRoomDiningCategory.setDeleted();
		inRoomDiningCategoryRepository.saveAndFlush(inRoomDiningCategory);


		
		map.addAttribute("inRoomDiningCategoryList", inRoomDiningCategoryRepository.findByNotDeleted());
		
		return "admin/inroomdiningcategorylist";
	}
	
	
	@RequestMapping(method = RequestMethod.POST, value="/in-room-dining-category/view")
	public String saveInRoomDiningCategory(ModelMap map, InRoomDiningCategory inRoomDiningCategory,
			@RequestParam String menuCategory) {
		
		inRoomDiningCategoryRepository.saveAndFlush(inRoomDiningCategory);
		map.put("menuCategory", menuCategory);
	
		return "redirect:/admin/in-room-dining-category-list";
	}
	

	
	@RequestMapping(method = RequestMethod.GET, value="/in-room-dining-category-list")
	public String showInRoomDiningCategoryList( InRoomDiningCategory inRoomDiningCategory,ModelMap map ) {
		
		map.addAttribute("inRoomDiningCategoryList", inRoomDiningCategoryRepository.findAll());
		
		return "admin/inroomdiningcategorylist";
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/in-room-dining-category-list/{inRoomDiningCategoryId}")
	public String showAddInRoomDiningMenuForm(@PathVariable(name="inRoomDiningCategoryId") int inRoomDiningCategoryId,  InRoomDiningCategory inRoomDiningCategory,
			 ModelMap map) {
		inRoomDiningCategoryRepository.findById(inRoomDiningCategoryId);

		

	return "admin/addInRoomDiningMenu";
	}
	
	

	
	@RequestMapping(method = RequestMethod.GET,value="/in-room-dining-category-list/orderlist")
	public String showInRoomOrderList(ModelMap map) {
		
		map.addAttribute("orderlist", inRoomOrderRepository.findByNotDeleted());
		
		return "admin/inRoomOrderList";
	}
	@RequestMapping(method=RequestMethod.GET, value="/inRoomMenu/Order/update/{menuid}")
	public String updateOrder(@PathVariable(name="menuid") int id, ModelMap map) {
	
		InRoomOrder temp = 	inRoomOrderRepository.findById(id);
		temp.setStatus("Prepared");
		inRoomOrderRepository.saveAndFlush(temp);
		map.addAttribute("orderlist", inRoomOrderRepository.findAll());
	
		return "admin/inRoomOrderList";
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/inRoomMenu/Order/delete/{menuid}")
	public String deleteOrder(@PathVariable(name="menuid") int id, ModelMap map) {
		InRoomOrder inRoomOrder=inRoomOrderRepository.findById(id);
		inRoomOrder.setDeleted();
		inRoomOrderRepository.saveAndFlush(inRoomOrder);
		map.addAttribute("orderlist", inRoomOrderRepository.findByNotDeleted());
		return "admin/inRoomOrderList";
	}
	
	
	
	
	

	
	
	
	

//SPA	
	
	//display lists of spa reservations
	@RequestMapping(method=RequestMethod.GET, value="/spaReservations")
	public String spaReservationList(ModelMap  map, SpaReservation spaReservation, Services services, Guest guest) {
		map.addAttribute("spaReservations", srr.getAllSpaReservation());

		return"admin/spaReservations";
	}
	
	

	
	//save spa reservation
	@RequestMapping(method=RequestMethod.GET, value="/spa/service/reservation/update/{spaReservationId}")
	public String updateSpaReservation(@PathVariable(name="spaReservationId") int spaReservationId, Services services, Guest guest, ModelMap map) {
	
		SpaReservation temp = srr.getOne(spaReservationId);
		temp.setStatus("Handled");
		srr.saveAndFlush(temp);
		map.addAttribute("spaReservations", srr.getAllSpaReservation());
		
	
		return "redirect:/admin/spaReservations";
	}
	
	
	//delete spa reservation
	@RequestMapping(method=RequestMethod.GET, value="/spa/service/reservation/delete/{spaReservationId}")
	public String deleteSpaReservation(@PathVariable(name="spaReservationId") int spaReservationId, ModelMap map) {
		srr.deleteById(spaReservationId);
		
		map.addAttribute("spaReservations", srr.getAllSpaReservation());
		return "redirect:/admin/spaReservations";
	}
	
	
	//RESORT SERVICES
	
	// delete resort service
	@RequestMapping(method=RequestMethod.GET, value="/resortServiceList/remove/{id}")
	public String deleteResortService(ModelMap map, @PathVariable(name="id") int id) {
		
		ResortServices resortService=resortServicesRepository.findById(id);
		resortService.setDeleted();
		resortServicesRepository.saveAndFlush(resortService);
		
		map.addAttribute("resortServiceList", resortServicesRepository.findByNotDeleted());
		return "admin/resortServicesList";
	}
	
	
	//show update resort service form
	@RequestMapping(method=RequestMethod.GET, value="/resortServiceList/update/{id}")
	public String updateResortServiceForm(ModelMap map, @PathVariable(name="id") int id) {
		
		
		map.addAttribute("resortService", resortServicesRepository.findById(id));
		return "admin/updateResortServices";
	}
	
	
	//update resort service
	@RequestMapping(method = RequestMethod.POST, value="/resort-services/update/{id}/view")
	public String updateResortService(ModelMap map, ResortServices resortServices, @PathVariable(name="id") int id) {
		
		resortServices.setId(id);
		resortServicesRepository.saveAndFlush(resortServices);
		
		return "redirect:/admin/resortServices";
	}
	
	
	//save resort service
	@RequestMapping(method = RequestMethod.POST, value="/resortServicesInfo")
	public String saveResortService(ModelMap map, ResortServices resortServices) {
		resortServicesRepository.saveAndFlush(resortServices);
		
		return "redirect:/admin/resortServices";
	}
	
	//display lists of resort services
	@RequestMapping(method = RequestMethod.GET, value="/resortServices")
	public String resortServicesList(ModelMap map, ResortServices resortServices) {
		map.addAttribute("resortServiceList", resortServicesRepository.findByNotDeleted());
		return "admin/resortServicesList";
	}
	
	
	//EVENTS
	//delete event
	@RequestMapping(method = RequestMethod.GET, value="/events/remove/{id}")
	public String deleteEvent(ModelMap map,  @PathVariable(name="id") int id) {
			
		Events event=eventsRepository.findById(id);
		event.setDeleted();
		eventsRepository.saveAndFlush(event);
		
		return "redirect:/admin/eventsList";
		}
	
	//save event photo
	@RequestMapping(method = RequestMethod.POST, value="/eventInfo")
	public String saveEvent(ModelMap map, Events events,  @RequestParam MultipartFile imgFile) {
		
		events.setImgFilePath(imgFile.getOriginalFilename());
	
		eventsRepository.saveAndFlush(events);
		return "redirect:/admin/events";
	}
			

	//display lists of events
	@RequestMapping(method = RequestMethod.GET, value="/events")
	public String eventsList(ModelMap map, Events events) {
		map.addAttribute("eventsList", eventsRepository.findByNotDeleted());
		return "admin/eventsList";
	}
	
	
//FEEDBACK
	
	//display lists of feedbacks
	@RequestMapping(method = RequestMethod.GET, value="/feedbacks")
	public String feedbackList(ModelMap map) {
		map.addAttribute("feedbacklist", feedBackRepository.findByNotDeleted());
		
		return "admin/feedbackList";
	}
	

	
//SERVICES - SPA THERAPY
		//display lists of services
	@RequestMapping(method = RequestMethod.GET, value="/spaTherapies")
	public String servicesList (ModelMap map, Services services) {
		map.addAttribute("therapiesList", servicesRepository.findByNotDeleted());
		
		return"admin/spaTherapies";
	}

	//save service
	@RequestMapping(method = RequestMethod.POST, value="/spaTherapy")
	public String saveService(ModelMap map, Services services, @RequestParam String serviceName,@RequestParam String servicePrice,
			@RequestParam String serviceDuration,
			@RequestParam String serviceDescription, @RequestParam MultipartFile imgFile) throws IllegalStateException, IOException {
		
		services.setImgFilePath(imgFile.getOriginalFilename());
		servicesRepository.saveAndFlush(services);
		map.put("serviceName", serviceName);
		map.put("serviceDescription", serviceDescription);
		map.put("servicePrice", servicePrice);
		map.put("serviceDuration", serviceDuration);

		map.put("imgFile", services.getImgFilePath());
		 
		
		 File file = new File(uploadingDir + imgFile.getOriginalFilename());
		 imgFile.transferTo(file);
		return "redirect:/admin/spaTherapies";
	}
	
	//delete service
	@RequestMapping(method=RequestMethod.GET, value="/spaTherapy/delete/{id}")
	public String deleteService(ModelMap map, @PathVariable(name="id") int id) {
		
		Services service=servicesRepository.findById(id);
		service.setDeleted();
		servicesRepository.saveAndFlush(service);

		map.addAttribute("therapiesList", servicesRepository.findByNotDeleted());
		return "redirect:/admin/spaTherapies";
	}
	
	//show update service form
	@RequestMapping(method=RequestMethod.GET, value="/spaTherapy/update/{id}")
	public String updateServiceForm(ModelMap map, @PathVariable(name="id") int id) {
		
		map.addAttribute("therapy",servicesRepository.findById(id));		
		return "admin/updateSpaTherapy";
	}
	
	
	//update service
	@RequestMapping(method=RequestMethod.POST, value="/spaTherapy/{id}/updated")
	public String updateService(ModelMap map, @PathVariable(name="id") int id, Services services) {
		
		
		//service.setImgFilePath(servicesRepository.findById(id).getImgFilePath());
		Services service = servicesRepository.getOne(services.getId());
		service.setId(id);
		servicesRepository.saveAndFlush(service);
		map.addAttribute("therapiesList", servicesRepository.findByNotDeleted());

		return "redirect:/admin/spaTherapies";
	}
	
	
	
	
	
	
}
	