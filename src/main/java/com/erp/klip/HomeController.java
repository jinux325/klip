package com.erp.klip;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

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

import mybatis.dao.AccountDAO;
import mybatis.dao.ListBuildDAO;
import mybatis.dao.ListCnstrDAO;
import mybatis.dao.ListCntrcDAO;
import mybatis.dao.ListCompDAO;
import mybatis.dao.ListDeptDAO;
import mybatis.dao.ListManagerDAO;
import mybatis.dao.ListTeamDAO;
import mybatis.vo.ListManagerVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSessionTemplate sqlsessonTemplate;
	
	@Autowired
	private HttpServletRequest request;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
		
	@RequestMapping(value = "/popup", method = RequestMethod.GET)
	public String popup(Model model) throws Exception {		
		
		ListDeptDAO listDeptDAO = sqlsessonTemplate.getMapper(ListDeptDAO.class);
		ListTeamDAO listTeamDAO = sqlsessonTemplate.getMapper(ListTeamDAO.class);
		ListCompDAO listCompDAO = sqlsessonTemplate.getMapper(ListCompDAO.class);
		ListCntrcDAO listCntrcDAO = sqlsessonTemplate.getMapper(ListCntrcDAO.class);
		ListCnstrDAO listCnstrDAO = sqlsessonTemplate.getMapper(ListCnstrDAO.class);
		ListBuildDAO listBuildDAO = sqlsessonTemplate.getMapper(ListBuildDAO.class);
		
		AccountDAO accountDAO = sqlsessonTemplate.getMapper(AccountDAO.class);
		
		model.addAttribute("listTeam", listTeamDAO.listTeam());
		model.addAttribute("listComp", listCompDAO.listCompDivision());
		model.addAttribute("listCntrc", listCntrcDAO.listCntrcDivision());
		model.addAttribute("listCnstr", listCnstrDAO.listCnstrDivision());
		model.addAttribute("listBuild", listBuildDAO.listBuildDivision());
		
		return "popup";
	}
	
	@RequestMapping(value = "/ajax/getManagerList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getManagerList(HttpServletRequest request) throws Exception {		
		
		String key = request.getParameter("key");
		logger.info("request : " + key);
		
		ListManagerDAO listManagerDAO = sqlsessonTemplate.getMapper(ListManagerDAO.class);
		List<ListManagerVO> list = listManagerDAO.listManager(key);
				
		Map<String, Object> retVal = new HashMap<String, Object>();
	    retVal.put("listManager", list); //bookList란 키로 bookList의 값을 넣어줍니다. (웹에서 bookList키로 추출
	    retVal.put("code", "OK");
	    
		return retVal;
	}
	
}
