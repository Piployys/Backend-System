package com.mfu.web.controller;

import java.util.List;

import javax.ejb.EJB;

import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mfu.*;
import com.mfu.entity.*;

@Controller
public class ScholarshipInformationController {

	@EJB(mappedName = "ejb:/HelloEJB//ScholarshipInformationServiceBean!com.mfu.ScholarshipInformationService")
	ScholarshipInformationService ScholarshipInfoService;

	@RequestMapping("/listScholarshipInfo")
	public ModelAndView listScholarshipInfo(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("listScholarshipInfo.jsp");
		List<ScholarshipInformation> schList;

		try {
			schList = ScholarshipInfoService.getScholarships();
			mv.addObject("schList", schList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/DetailScholarshipInfo")
	public ModelAndView DetailScholarshipInfo(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("DetailScholarshipInfo.jsp");
		List<ScholarshipInformation> schList;
		try {
			schList = ScholarshipInfoService.getScholarships();
			mv.addObject("schList", schList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/newScholarshipInfo")
	public ModelAndView newScholarshipInfo() {
		ModelAndView mv = new ModelAndView("scholarshipInfoForm.jsp");
		ScholarshipInformation sch = new ScholarshipInformation();
		mv.addObject("scholarship", sch);
		return mv;
	}

	@RequestMapping("/saveScholarshipInfo")
	public String saveScholarshipInfo(@ModelAttribute("scholarship") ScholarshipInformation scholarship,
			BindingResult result, HttpServletRequest request) {
		try {
			if (scholarship.getScholarshipInfo_Id() == 0) {
				ScholarshipInfoService.save(scholarship);
			} else {
				ScholarshipInfoService.update(scholarship);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:listScholarshipInfo.do";
	}

	@RequestMapping("/editSch")
	public ModelAndView editSch(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));

		ScholarshipInformation foundSch;
		ModelAndView mv = new ModelAndView("scholarshipInfoForm.jsp");
		try {
			foundSch = ScholarshipInfoService.findScholarshipById(paramId);
			mv.addObject("scholarship", foundSch);
		} catch (Exception e) {

			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/deleteSch")
	public String deleteSch(HttpServletRequest request) {

		ScholarshipInfoService.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:scholarshipInfoForm.do";
	}

}