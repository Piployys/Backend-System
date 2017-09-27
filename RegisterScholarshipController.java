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
public class RegisterScholarshipController {
	@EJB(mappedName = "ejb:/HelloEJB//RegisterScholarshipServiceBean!com.mfu.RegisterScholarshipService")
	RegisterScholarshipService regschSer;

	@RequestMapping("/listRegisterSch")
	public ModelAndView listRegisterSch(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("listReg.jsp");
		List<RegisterScholarship> regSchList;

		try {
			regSchList = regschSer.getAllRegisterScholarship();
			mv.addObject("regSchList", regSchList);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/newRegisterSch")
	public ModelAndView newRegisterSch() {
		ModelAndView mv = new ModelAndView("Test.jsp");
		RegisterScholarship regScholar = new RegisterScholarship();
		mv.addObject("regScholarship", regScholar);

		return mv;
	}

	@RequestMapping("/saveRegisterSch")
	public String saveRegisterSch(@ModelAttribute("regScholarship") RegisterScholarship regScholarship,
			BindingResult result, HttpServletRequest request) {

		try {

			// employee is not existed, meaning it's new employee
			if (regScholarship.getRegisterSch_Id() == 0) {
				regschSer.save(regScholarship);

				// employee is existed
			} else {
				regschSer.update(regScholarship);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:listRegisterSch.do";
	}

	@RequestMapping("/editRegisterSch")
	public ModelAndView editRegisterSch(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));

		RegisterScholarship foundEmp;
		ModelAndView mv = new ModelAndView("Test.jsp");
		try {
			foundEmp = regschSer.findRegisterScholarshipById(paramId);
			mv.addObject("regScholarship", foundEmp);
		} catch (Exception e) {

			e.printStackTrace();
		}

		return mv;
	}

	@RequestMapping("/deleteRegisterSch")
	public String deleteRegisterSch(HttpServletRequest request) {

		regschSer.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:listRegisterMember.do";
	}

}