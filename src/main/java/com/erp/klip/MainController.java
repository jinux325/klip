package com.erp.klip;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mybatis.dao.ConstructionDAO;
import mybatis.dao.MainDAO;
import mybatis.vo.Filter;

@Controller

public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSessionTemplate sqlsessonTemplate;
	
	@Autowired
	private HttpServletRequest request;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		System.out.println("@@@ main Controller @@@");
		MainDAO dao = sqlsessonTemplate.getMapper(MainDAO.class);
		
		model.addAttribute("list", dao.selectCnstrStatus());
		
		System.out.println(dao.selectCnstrStatus().get(0).getCnstr_number());
		System.out.println(dao.selectCnstrStatus().get(0).getCnstrvo().getName());
		
		return "main";
	}
	
	
	
}
