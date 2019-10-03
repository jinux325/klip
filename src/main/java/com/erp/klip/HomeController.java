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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mybatis.dao.ConstructionDAO;
import mybatis.dao.ListBuildDAO;
import mybatis.dao.ListCnstrDAO;
import mybatis.dao.ListCntrcDAO;
import mybatis.dao.ListCompDAO;
import mybatis.dao.ListDeptDAO;
import mybatis.dao.ListManagerDAO;
import mybatis.dao.ListTeamDAO;
import mybatis.dao.info.AccountDAO;
import mybatis.dao.info.CnstrDAO;
import mybatis.dao.info.CnstrStatusDAO;
import mybatis.dao.info.CntrcDAO;
import mybatis.dao.info.CntrcDivisionDAO;
import mybatis.dto.InsertDTO;
import mybatis.vo.Filter;
import mybatis.vo.ListManagerVO;
import mybatis.vo.info.CnstrStatusVO;
import mybatis.vo.info.CnstrVO;
import mybatis.vo.info.CntrcDivisionVO;
import mybatis.vo.info.CntrcVO;

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
	
	@RequestMapping(value = "/filter", method = RequestMethod.GET)
	// @ResponseBody
	public String filter(Filter filter, Locale locale, Model model) throws Exception {
		// logger.info("Welcome home! The client locale is {}.", locale);

		ConstructionDAO dao = sqlsessonTemplate.getMapper(ConstructionDAO.class);

		System.out.println("filter 단계");
		//model.addAttribute("count", dao.filterCount(filter));
		
		int countAll = dao.filterCount1();
		System.out.println("  @@ "+ countAll);
		
		model.addAttribute("count1", dao.filterCount1());
		model.addAttribute("count2", dao.filterCount2());
		model.addAttribute("count3", dao.filterCount3());
		model.addAttribute("count4", dao.filterCount4());
		model.addAttribute("count5", dao.filterCount5());
		model.addAttribute("count6", dao.filterCount6());
		model.addAttribute("count7", dao.filterCount7());
		model.addAttribute("count8", dao.filterCount8());
		model.addAttribute("count9", dao.filterCount9());
		model.addAttribute("count10", dao.filterCount10());
		model.addAttribute("count11", dao.filterCount11());
		model.addAttribute("count12", dao.filterCount12());
		model.addAttribute("count13", dao.filterCount13());
		model.addAttribute("count14", dao.filterCount14());
		model.addAttribute("count15", dao.filterCount15());
		model.addAttribute("count16", dao.filterCount16());
		model.addAttribute("count17", dao.filterCount17());
		
		model.addAttribute("list", dao.filter(filter));
		
		
		
		model.addAttribute("filter", filter);
		
		ListTeamDAO listTeamDAO = sqlsessonTemplate.getMapper(ListTeamDAO.class);
		ListCompDAO listCompDAO = sqlsessonTemplate.getMapper(ListCompDAO.class);
		ListCntrcDAO listCntrcDAO = sqlsessonTemplate.getMapper(ListCntrcDAO.class);
		ListCnstrDAO listCnstrDAO = sqlsessonTemplate.getMapper(ListCnstrDAO.class);
		ListBuildDAO listBuildDAO = sqlsessonTemplate.getMapper(ListBuildDAO.class);
				
		model.addAttribute("listTeam", listTeamDAO.listTeam());
		model.addAttribute("listComp", listCompDAO.listCompDivision());
		model.addAttribute("listCntrc", listCntrcDAO.listCntrcDivision());
		model.addAttribute("listCnstr", listCnstrDAO.listCnstrDivision());
		model.addAttribute("listBuild", listBuildDAO.listBuildDivision());
		

		return "filter";
	}
	
	
	
	
}
