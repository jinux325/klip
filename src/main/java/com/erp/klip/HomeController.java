package com.erp.klip;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mybatis.dao.CompDAO;
import mybatis.dao.ConstructionDAO;
import mybatis.vo.CompVO;
import mybatis.vo.ConstructionVO;
import mybatis.vo.PageMaker;
import mybatis.vo.SearchCriteria;
import mybatis.vo.TaskConstVO;

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
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		CompDAO dao = sqlsessonTemplate.getMapper(CompDAO.class);
		List<CompVO> list = dao.listComp();
		
		if (list != null && list.size() > 0) {
			request.setAttribute("list", list);
		}
		
		return "main";
	}
	@RequestMapping(value = "/constructionMain", method = RequestMethod.GET)
	public String constMain(@ModelAttribute("cri") SearchCriteria cri, Locale locale, Model model) throws Exception {
		//logger.info("Welcome home! The client locale is {}.", locale);
		
		ConstructionDAO  dao = sqlsessonTemplate.getMapper(ConstructionDAO.class);
		//List<ConstructionVO> list = dao.selectConstruction();
		//List<TaskConstVO> list = dao.selectTaskConst();

		//model.addAttribute("list",list);
		
		model.addAttribute("list", dao.selectConstruction(cri));
		/*ModelAndView view = new ModelAndView();



		view.addObject("list", dao.boardlistSearch(cri));
		*/
		PageMaker pageMaker = new  PageMaker();
		pageMaker.setCri(cri);
	
		pageMaker.setTotalCount(dao.boardCountPaging(cri));
		
		System.out.println("@@@@@@@@@ "+pageMaker.getEndPage());
		System.out.println("@@@@@@@@@ "+pageMaker.getStartPage());
		
		if(pageMaker.isNext()) {
			System.out.println("@@@@@@@@@ "+ "다음 버튼");
		}
		if(pageMaker.isPrev()) {
			System.out.println("@@@@@@@@@ "+ "전 버튼");
		}
		
		//view.addObject("pageMaker", pageMaker);
		model.addAttribute("pageMaker", pageMaker);	
		
		
		
		return "constructionMain";
	}
}
