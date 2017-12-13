package com.kevintest.sample.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.kevintest.sample.domain.Account;
import com.kevintest.sample.domain.State;
import com.kevintest.sample.service.AccountService;

@Controller
public class AccountWebController {

	@Autowired
	AccountService service;
	
	@RequestMapping("/")
	public ModelAndView index(HttpSession session,HttpServletRequest request) {

		ModelMap model = new ModelMap();
		String menu = "index";
		session=request.getSession();
		dispatch(session, model, menu);

		return new ModelAndView(menu, model);
	}
	
	@RequestMapping("index")
	public ModelAndView index1(HttpSession session,HttpServletRequest request) {

		ModelMap model = new ModelMap();
		String menu = "index";
		session=request.getSession();
		dispatch(session, model, menu);

		return new ModelAndView(menu, model);
	}

	@RequestMapping("/support")
	public ModelAndView support(HttpSession session,HttpServletRequest request) {
		
		ModelMap model = new ModelMap();
		String menu = "support";
		session=request.getSession();
		dispatch(session, model, menu);
		
		
		
		return new ModelAndView(menu, model);
	}
	
	@RequestMapping("/fundstransfer")
	public ModelAndView fundstransfer(HttpSession session,HttpServletRequest request) {
		
		ModelMap model = new ModelMap();
		String menu = "fundstransfer";
		session=request.getSession();
		dispatch(session, model, menu);
		
		return new ModelAndView(menu, model);
	}

	@RequestMapping("/aboutus")
	public ModelAndView aboutus(HttpSession session) {
		ModelMap model = new ModelMap();
		String menu = "aboutus";
		dispatch(session, model, menu);

		return new ModelAndView(menu, model);
	}

	@RequestMapping("/services")
	public ModelAndView services(HttpSession session) {
		ModelMap model = new ModelMap();
		String menu = "services";
		dispatch(session, model, menu);

		return new ModelAndView(menu, model);
	}

	@RequestMapping("/products")
	public ModelAndView products(HttpSession session) {
		ModelMap model = new ModelMap();
		String menu = "products";
		dispatch(session, model, menu);

		return new ModelAndView(menu, model);
	}

	@RequestMapping("/staff")
	public ModelAndView staff(HttpSession session) {
		ModelMap model = new ModelMap();
		String menu = "staff";
		dispatch(session, model, menu);

		return new ModelAndView(menu, model);
	}

	@RequestMapping("/contacts")
	public ModelAndView contacts(HttpSession session) {
		ModelMap model = new ModelMap();
		String menu = "contacts";
		dispatch(session, model, menu);

		return new ModelAndView(menu, model);
	}

	@RequestMapping("/links")
	public ModelAndView links(HttpSession session) {
		ModelMap model = new ModelMap();
		String menu = "links";
		dispatch(session, model, menu);

		return new ModelAndView(menu, model);
	}

	public void dispatch(HttpSession session, ModelMap model, String menu) {

		Account acc = (Account) session.getAttribute("account");
		

		if (acc == null) {
			return;
		}
		
		System.out.println("test: "+acc.toString());

		String username = acc.getUsername();
		String lastview = acc.getLastview();

		Account account = service.doGetByName(username);
		System.out.println(account);
		if (account == null) {

			session.removeAttribute("account");
			menu = lastview;
			return;
		}

		acc.setLastview(menu);

		// update the according data in the cache
		service.doput(acc);
		session.setAttribute("account", acc);

		model.addAttribute("account", acc);
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {

		ModelMap model = new ModelMap();
		session = request.getSession();
		Account account = new Account();
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		String index = request.getParameter("index");
		

		account.setPassword(pwd);
		account.setUsername(username);
		account.setId(username);

		/**List<AccountBean> list = service.doGetAll();
		
		System.out.println(list.size());
		for(AccountBean a:list)
			System.out.println(a.toString());*/
		
		Account acc = (Account) service.doGetByName(username);
		//if (list.size() == 0 ) {
		if (acc==null ) {
			String login_suc = index;
			account.setLastview(login_suc);
			State state = new State("", "", "", "", "", "", "", "");
			account.setState(state);
			model.addAttribute("loginfo", "the user first login!!");
			model.addAttribute("account", account);
			// put the session data into the gemfire cache
			session.setAttribute("account", account);
			service.doput(account);
			return new ModelAndView(login_suc, model);
		} else {
			//acc = list.get(0);
			System.out.println("login: "+ acc.toString());
			System.out.println("this user already logged in!!");
			model.addAttribute("loginfo", "the user already logged in!!");
			model.addAttribute("account", acc);
			session.setAttribute("account", acc);
			String login_suc = acc.getLastview();
			return new ModelAndView(login_suc, model);

		}

	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(HttpServletRequest request,
			HttpServletResponse response, HttpSession session)
			throws JsonParseException, JsonMappingException, IOException {
		session = request.getSession();

		Account acc = (Account) session.getAttribute("account");
		String lastview = acc.getLastview();

		session.removeAttribute("account");

		service.doDelete(acc);

		return lastview;
	}

	@RequestMapping(value = "/transfer", method = RequestMethod.POST)
	public void transfer(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		
//		ModelMap model = new ModelMap();
		String payerID = request.getParameter("payerid");
		String payerName = request.getParameter("payername");
		String payeeID = request.getParameter("payeeid");
		String payeeName = request.getParameter("payeename");
		String transferAmt = request.getParameter("transferamt");
		String userpwd = request.getParameter("userpassword");
		String usermobile = request.getParameter("usermobile");
		String step = request.getParameter("step");

		State state = new State(step, payerID, payerName, payeeID,
				payeeName, transferAmt, userpwd, usermobile);

		System.out.println(state.toString());
		session = request.getSession();
		Account acc = (Account) session.getAttribute("account");

//		String index = acc.getLastview();
		acc.setState(state);
		service.doput(acc);
		session.setAttribute("account", acc);
		
//		return new ModelAndView(index, model);
		
	}

	@RequestMapping(value = "/transfer2", method = RequestMethod.POST)
	public void transfer2(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		// submit successfully, clean the state
		State state = new State("", "", "", "", "", "", "", "");
		session = request.getSession();
		Account acc = (Account) session.getAttribute("account");

		acc.setState(state);
		acc.setLastview("fundstransfer.html");

		
		service.doput(acc);
		session.setAttribute("account", acc);

	}
	
}
