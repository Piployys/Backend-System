package com.mfu.web.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.mfu.entity.*;
import com.mfu.*;

@Controller
public class RegistMemController {
	@EJB(mappedName = "ejb:/HelloEJB//RegisterMemberServiceBean!com.mfu.RegisterMemberService")
	RegisterMemberService regService;

	@RequestMapping("/listRegisterMember")
	public ModelAndView listRegisterMember(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("list.jsp");
		List<RegisterMember> regMemList;

		try {
			regMemList = regService.getRegisterMembers();
			mv.addObject("regMemList", regMemList);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/newRegisterMember")
	public ModelAndView newRegisterMember() {
		ModelAndView mv = new ModelAndView("RegisterFormTest.jsp");
		RegisterMember member = new RegisterMember();
		mv.addObject("register", member);

		return mv;
	}

	@RequestMapping("/saveRegisterMember")
	public String saveRegisterMember(@ModelAttribute("register") RegisterMember register, BindingResult result,
			HttpServletRequest request) {
						
		try {
			
			// employee is not existed, meaning it's new employee
			if (register.getRegisterId() == 0) {
				regService.save(register);

				// employee is existed
			} else {
				regService.update(register);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:listRegisterMember.do";
	}

	@RequestMapping("/editRegisterMember")
	public ModelAndView editRegisterMember(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));

		RegisterMember foundEmp;
		ModelAndView mv = new ModelAndView("RegisterFormTest.jsp");
		try {
			foundEmp = regService.findRegisterMemberById(paramId);
			mv.addObject("register", foundEmp);
		} catch (Exception e) {

			e.printStackTrace();
		}

		return mv;
	}

	@RequestMapping("/deleteRegisterMember")
	public String deleteRegisterMember(HttpServletRequest request) {

		regService.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:listRegisterMember.do";
	}

}