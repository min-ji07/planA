package com.kh.planA.travelInfo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TravelInfoController {
	
//	@Autowired
//	private TravelInfoService tiService;
	@RequestMapping("travelInfoView.me")
	public String travelInfoView() {
		return "travelInfo/travelInformationForm";
	}

}
