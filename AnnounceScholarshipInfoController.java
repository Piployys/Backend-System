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
public class AnnounceScholarshipInfoController {

	@EJB(mappedName = "ejb:/HelloEJB//AnnounceScholarshipInfoServiceBean!com.mfu.AnnounceScholarshipInfoService")
	AnnounceScholarshipInfoService ancService;

	@RequestMapping("/listAnnounceSchInfo")
	public ModelAndView listAnnounceSchInfo(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("AnnounceScholarship.jsp");
		List<AnnounceScholarshipInfo> ancList;

		try {
			ancList = ancService.getAnnounceScholarshipInfo();
			mv.addObject("ancList", ancList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/listAnnounceScholarship")
	public ModelAndView listAnnounceScholarship(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("listAnnounceScholarship.jsp");
		List<AnnounceScholarshipInfo> ancList;

		try {
			ancList = ancService.getAnnounceScholarshipInfo();
			mv.addObject("ancList", ancList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/DetailAnnounceInfo")
	public ModelAndView DetailAnnounceInfo(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("DetailAnnounceInfo.jsp");
		List<AnnounceScholarshipInfo> ancList;

		try {
			ancList = ancService.getAnnounceScholarshipInfo();
			mv.addObject("ancList", ancList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/listAncStd")
	public ModelAndView listAncStd(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("listAncStd.jsp");
		List<AnnounceScholarshipInfo> ancList;

		try {
			ancList = ancService.getAnnounceScholarshipInfo();
			mv.addObject("ancList", ancList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/newAnnounceSchInfo")
	public ModelAndView newAnnounceSchInfo() {
		ModelAndView mv = new ModelAndView("AnnonceScholarshipForm.jsp");
		AnnounceScholarshipInfo ancSchInfo = new AnnounceScholarshipInfo();
		mv.addObject("announce", ancSchInfo);

		return mv;
	}

	@RequestMapping("/saveAnnounceSchInfo")
	public String saveRegisterMember(@ModelAttribute("announce") AnnounceScholarshipInfo announce, BindingResult result,
			HttpServletRequest request) {

		try {
			// employee is not existed, meaning it's new employee
			if (announce.getAnnounceSchInfo_Id() == 0) {
				ancService.save(announce);

				// employee is existed
			} else {
				ancService.update(announce);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:listAnnounceSchInfo.do";
	}

	@RequestMapping("/editAnnounceSchInfo")
	public ModelAndView editAnnounceSchInfo(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));

		AnnounceScholarshipInfo foundAnc;
		ModelAndView mv = new ModelAndView("AnnonceScholarshipForm.jsp");
		try {
			foundAnc = ancService.findAnnounceScholarshipInfoById(paramId);
			mv.addObject("announce", foundAnc);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/deleteAnnounceSchInfo")
	public String deleteAnnounceSchInfo(HttpServletRequest request) {

		ancService.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:listAnnounceSchInfo.do";
	}

}
