package ucm.nomadicpulse.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ucm.nomadicpulse.bean.DVDBean;
import ucm.nomadicpulse.bean.UserBean;
import ucm.nomadicpulse.model.DVDModel;
import ucm.nomadicpulse.model.UserModel;
import ucm.nomadicpulse.repository.DVDRepository;

@Controller(value = "/OnlineDVDRentals")
public class OnlineDVDStoreController {

	private static Logger logger = Logger.getLogger(OnlineDVDStoreController.class);

	@Autowired
	private DVDRepository repo;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getHome() {
		ModelAndView mav = new ModelAndView("index", "command", new DVDModel());
		logger.info("index.jsp populated");
		return mav;
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView getHomePage() {
		ModelAndView mav = new ModelAndView("index", "command", new DVDModel());
		logger.info("index.jsp populated");
		return mav;
	}

	@RequestMapping(value = "/movies", method = RequestMethod.GET)
	public ModelAndView getMoviesPage() {
		ModelAndView mav = new ModelAndView("Movies", "command", new DVDModel());
		logger.info("movies.jsp populated");
		return mav;
	}

	@RequestMapping(value = "/games", method = RequestMethod.GET)
	public ModelAndView getGamesPage() {
		ModelAndView mav = new ModelAndView("GamesPage", "command", new DVDModel());
		logger.info("gamespage.jsp populated");
		return mav;
	}

	@RequestMapping(value = "/mp3", method = RequestMethod.GET)
	public ModelAndView getMp3Pag() {
		ModelAndView mav = new ModelAndView("SongsPage", "command", new DVDModel());
		logger.info("songspage.jsp populated");
		//System.out.println();
		return mav;
	}

	@RequestMapping(value = "/softwares", method = RequestMethod.GET)
	public ModelAndView getSogtwaresPage() {
		ModelAndView mav = new ModelAndView("SoftwaresPage", "command", new DVDModel());
		logger.info("SogtwaresPage.jsp populated");
		return mav;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView register = new ModelAndView("register", "command", new UserModel());
		;
		logger.info("register.jsp populated");
		return register;
	}

	@RequestMapping(value = "/doRegister", method = RequestMethod.POST)
	public ModelAndView doRegister(@ModelAttribute("UserModel") UserModel userModel, BindingResult result) throws Exception {
		// logger.info(userModel.getId());
		
		
		logger.info(userModel.getFirstName());
		logger.info(userModel.getLastName());
		logger.info(userModel.getEmailAddress());
		logger.info(userModel.getAddress());
		logger.info(userModel.getGender());
		logger.info(userModel.getPassword());
		logger.info(userModel.getRe_password());

		
		repo.doRegister(userModel);
		
		ModelAndView mav = new ModelAndView("registrationdone");
		
		mav.addObject("message", "You have registered successfully");
		
		return mav;

	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView login = new ModelAndView("login", "command", new UserModel());
		
		logger.info("login.jsp populated");
		return login;
	}

	
	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute("loginForm") UserModel userModel,  Model model) throws Exception {
		
		
		logger.info(userModel.getEmailAddress());
		
		logger.info(userModel.getPassword());

		/*repo.doLogin( userModel.getEmailAddress(), userModel.getPassword());
		ModelAndView mav = new ModelAndView("profileHome");
		mav.addObject("loginForm", "loginForm");*/
		//loginsSession.setAttribute("loginSession", userModel);
		return "profileHome";

	}

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public ModelAndView welcome() throws Exception {
		repo.indexDVDS();
		ModelAndView modelandview = new ModelAndView("hello");
		modelandview.addObject("message", "HelloWorld!");
		return modelandview;
	}

	@RequestMapping(value = "/insertDVD", method = RequestMethod.GET)
	public ModelAndView insertDVDPage() {
		ModelAndView mav = new ModelAndView("insertDVD", "command", new DVDModel());
		return mav;
	}

	@RequestMapping(value = "/insertDVDToDB", method = RequestMethod.POST)
	public ModelAndView insertDVDToDB(@ModelAttribute("DVDModel") DVDModel dvdModel) throws Exception {
		// logger.info(dvdModel.getId());
		logger.info(dvdModel.getDvdCategory());
		logger.info(dvdModel.getDvdName());
		logger.info(dvdModel.getDvdPrice());
		logger.info(dvdModel.getDvdDescription());
		logger.info(dvdModel.getImagePath());

		repo.insertDVDToDB(dvdModel.getDvdCategory(), dvdModel.getDvdName(), dvdModel.getDvdDescription(),
				dvdModel.getDvdPrice(), dvdModel.getImagePath());
		ModelAndView mav = new ModelAndView("done");
		mav.addObject("message", "Add DVD  to DB successfully");
		return mav;

	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView searchPage() {
		ModelAndView mav = new ModelAndView("search");
		return mav;
	}

	@RequestMapping(value = "/doSearch", method = RequestMethod.POST)
	public ModelAndView search(@RequestParam("searchText") String searchText, HttpSession session) throws Exception {
		// List<DVDBean> allFound = repo.getDVDList(searchText);
		List<DVDBean> allFound = repo.searchDVD(searchText);

		List<DVDModel> dvdModels = new ArrayList<DVDModel>();
		for (DVDBean dvd : allFound) {
			DVDModel dvdModel = new DVDModel();
			dvdModel.setId(dvd.getId());
			dvdModel.setDvdCategory(dvd.getDvdCategory());
			dvdModel.setDvdName(dvd.getDvdName());
			dvdModel.setDvdDescription(dvd.getDvdDescription());
			dvdModel.setDvdPrice(dvd.getDvdPrice());
			dvdModel.setImagePath(dvd.getImagePath());
			session.setAttribute(String.valueOf(dvd.getId()), dvdModel);
			dvdModels.add(dvdModel);

			logger.info("dvd list in controller" + dvdModels);
		}

		ModelAndView mav = new ModelAndView("foundDVDS");

		mav.addObject("foundDVDS", dvdModels);
		session.setAttribute("dvds", dvdModels);

		return mav;
	}

	
	
	
	
	@RequestMapping(value = "/cart", method = RequestMethod.POST)
	public ModelAndView addToCart(@RequestParam("dvdId") String dvdId,@ModelAttribute("cart") DVDModel model, HttpSession session) {

		logger.info("cart.jsp populated");
		List<DVDModel> dvdList = (List<DVDModel>) session.getAttribute("dvds");
		Iterator it= dvdList.iterator();
		String s[] = dvdId.split(",");
		List<Integer> ids = new ArrayList<Integer>();
		for(String i : s)
		{
			ids.add(Integer.parseInt(i));
		}
		//Integer dId = Integer.parseInt(dvdId);
		List<DVDModel> addedDvds = new ArrayList<DVDModel>();
		while(it.hasNext())
		{
			DVDModel dvd = (DVDModel) it.next();
			for(Integer id: ids)
			if(dvd.getId()==id)
			{
				addedDvds.add(dvd);
				if(session.getAttribute("addedItem")==null)
					session.setAttribute("addedItem", addedDvds);
				else
				{
					List<DVDModel> items = (List<DVDModel>) session.getAttribute("addedItem");
					items.add(dvd);
					session.setAttribute("addedItem", items);
				}

					
				logger.info("adding item to session");
			}
		}
		logger.info("SIZE IS" +dvdList.size());
	
		return new ModelAndView("cart", "cart", model);
	}

	
	
	
	
	
}
