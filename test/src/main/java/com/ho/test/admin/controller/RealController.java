package com.ho.test.admin.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ho.test.admin.model.RealSearchWordVo;

import org.springframework.ui.Model;

@Controller
public class RealController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "main";
		
	}
	
	@RequestMapping(value = "/daumReal.do", method = RequestMethod.GET)
	public String daumReal(Model model) throws Exception {
		
		
		Document document = Jsoup.connect("http://m.daum.net").get();
		Elements elements;
		ArrayList<RealSearchWordVo> list = new ArrayList<RealSearchWordVo>();
		
        if (null != document) {
            // class 가 rank_dummy 를 가지고 있는 div 태그는 포함시키지 않는다.
             elements = document.select("div.keyword_issue > ol.list_issue > li > a");
             for (int i = 0; i < 10; i++) {
            	RealSearchWordVo rsvo = new RealSearchWordVo();
            	rsvo.setWord(elements.get(i).select("span.txt_issue").text());
            	rsvo.setRank(i + 1);
            	list.add(rsvo);
            	
             }
             model.addAttribute("alist", list);
             model.addAttribute("engin","Daum");
             return "main";
        }
		return "redirect:/";
		
	}
	
	
	@RequestMapping(value = "/naverReal.do", method = RequestMethod.GET)
	public String naverReal(Model model) throws Exception {
		
		
		Document document = Jsoup.connect("http://www.naver.com?moblie").get();
		Elements elements;
		ArrayList<RealSearchWordVo> list = new ArrayList<RealSearchWordVo>();
		
        if (null != document) {
            // class 가 rank_dummy 를 가지고 있는 div 태그는 포함시키지 않는다.
             elements = document.select("ol#realrank > li:not(#lastrank) > a");
             for (int i = 0; i < 10; i++) {
            	RealSearchWordVo rsvo = new RealSearchWordVo();
            	rsvo.setWord(elements.get(i).attr("title"));
            	rsvo.setRank(i + 1);
            	list.add(rsvo);
            	
             }
             model.addAttribute("alist", list);
             model.addAttribute("engin","Naver");
             return "main";
        }
		return "redirect:/";
		
	}
	
	
}
