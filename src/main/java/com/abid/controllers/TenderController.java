package com.abid.controllers;
import java.util.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abid.entity.Tender;
import com.abid.service.TenderService;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class TenderController {

	private final TenderService tenderService;

	@GetMapping("/")
	public String index() {
		return "redirect:/index";
	}

	@GetMapping("/search")
	public ModelAndView search(@RequestParam Integer id) {
		ModelAndView mav = new ModelAndView("search");
		List<Tender> result = tenderService.search(id); 
		mav.addObject("result",result); 
		return mav;
	}

	/*
	 * @GetMapping("/search") public void localDate(@RequestParam("localDate")
	 * 
	 * @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate localDate) {
	 * 
	 * ModelAndView mav = new ModelAndView("search"); List<Tender>
	 * result=tenderService.search(Indicator_ID) }
	 */
	@GetMapping("/index")
	public String doActions(Model model) {
		model.addAttribute("tenderList", tenderService.findAll());
		return "tender";
	}
	
	
}
