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
		
	@RequestMapping(value = "/popup", method = RequestMethod.GET)
	public String popup(Model model) throws Exception {		
		
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
	    retVal.put("listManager", list);
	    retVal.put("code", "OK");
	    
		return retVal;
	}
	
	@RequestMapping(value = "/ajax/insertData", method = {RequestMethod.GET, RequestMethod.POST}, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public Map<String, Object> insertData(@ModelAttribute InsertDTO dto) throws Exception {
		
		logger.info("data : " + dto.toString());
		
		// DAO
		CnstrDAO cnstrDAO = sqlsessonTemplate.getMapper(CnstrDAO.class); 
		CnstrStatusDAO cnstrStatusDAO = sqlsessonTemplate.getMapper(CnstrStatusDAO.class);
		CntrcDAO cntrcDAO = sqlsessonTemplate.getMapper(CntrcDAO.class);
		CntrcDivisionDAO cntrcDivisionDAO = sqlsessonTemplate.getMapper(CntrcDivisionDAO.class);
		
		// 공사 정보
		CnstrVO cnstrVO = new CnstrVO();
		cnstrVO.setNumber(dto.getCnstrNumber());
		cnstrVO.setName(dto.getCnstrName());
		cnstrVO.setCnstr_division(dto.getSelCnstr());
		cnstrVO.setBuild_division(dto.getSelBuild());
		cnstrVO.setComp_division(dto.getSelComp());
		cnstrVO.setSupervisor_id(0);
		String bid = dto.getRatioBid();
		double ratioBid = !bid.isEmpty() && bid != null && !bid.equals("0") ? Double.parseDouble(bid) : 0;
		cnstrVO.setRatio_bid(ratioBid);
		String run = dto.getRatioRun();
		double ratioRun = !run.isEmpty() && run != null && !run.equals("0") ? Double.parseDouble(run) : 0;
		cnstrVO.setRatio_run(ratioRun);
		String bring = dto.getIsBring();
		int check = bring.isEmpty() || bring == null ? 0 : 1;
		cnstrVO.setCheck_bring(check);
		cnstrVO.setStart_date(dto.getStartDate());
		cnstrVO.setEnd_date(dto.getEndDate());
		cnstrVO.setManager_id(dto.getCurManager());
		
		// 공사 진행 정보
		CnstrStatusVO cnstrStatusVO = new CnstrStatusVO();
		cnstrStatusVO.setCnstr_number(dto.getCnstrNumber());
		cnstrStatusVO.setManager_id(dto.getCurManager());
		
		// DB 입력		
		int cnt1 = cnstrDAO.addCnstr(cnstrVO);
		int cnt2 = 0;
		if (cnt1 > 0) {
			cnt2 = cnstrStatusDAO.addCnstrStatus(cnstrStatusVO);
		} 
		
		// 계약 정보
		CntrcVO cntrcVO = new CntrcVO();
		
		int num = cntrcDAO.getCntrcNumber(dto.getCntrcNumber());
		String number = dto.getCntrcNumber() + "-" + String.format("%03d", num + 1);
		cntrcVO.setNumber(number);
		cntrcVO.setCnstr_number(dto.getCnstrNumber());
		cntrcVO.setCntrc_division(dto.getSelCntrc());
		cntrcVO.setEnterprise(dto.getCnstrComp());
		String cntrcAmount = dto.getCntrcAmount();
		int amount = !cntrcAmount.isEmpty() && cntrcAmount != null && !cntrcAmount.equals("0") ? Integer.parseInt(cntrcAmount.replaceAll(",", "")) : 0;
		cntrcVO.setAmount(amount);
		cntrcVO.setRegdate(dto.getCntrcDate());
		
		int cnt3 = 0;
		int cnt4 = 0;
		if (cnt1 > 0) {
			cnt3 = cntrcDAO.addCntrc(cntrcVO);
			
			if (cnt3 > 0) {
				logger.info("cntrcNumber : " + cntrcVO.getNumber());
				
				CntrcDivisionVO cntrcDivisionVO = null;
				switch(dto.getSelCnstr()) {
				case 2: // 가공
					// 공사 구분 계약 정보
					cntrcDivisionVO = new CntrcDivisionVO();
					cntrcDivisionVO.setCntrc_number(cntrcVO.getNumber());
					cntrcDivisionVO.setDivision("가공");
					cntrcDivisionVO.setRatio(100);
					cntrcDivisionVO.setTeam_id(dto.getProgressTeam());
					cnt4 = cntrcDivisionDAO.addCntrcDivision(cntrcDivisionVO);
					
					break;
					
				case 3: // 지중
					// 공사 구분 계약 정보
					cntrcDivisionVO = new CntrcDivisionVO();
					cntrcDivisionVO.setCntrc_number(cntrcVO.getNumber());
					cntrcDivisionVO.setDivision("지중");
					cntrcDivisionVO.setRatio(100);
					cntrcDivisionVO.setTeam_id(dto.getUndergroundTeam());
					cnt4 = cntrcDivisionDAO.addCntrcDivision(cntrcDivisionVO);
					
					break;
					
				case 1: // 복합
					// 가공 계약 정보
					cntrcDivisionVO = new CntrcDivisionVO();
					cntrcDivisionVO.setCntrc_number(cntrcVO.getNumber());
					cntrcDivisionVO.setDivision("가공");
					double ratio1 = dto.getRatioProgress() != null && !dto.getRatioProgress().equals("0") ? Double.parseDouble(dto.getRatioProgress()) : 0;
					cntrcDivisionVO.setRatio(ratio1);
					cntrcDivisionVO.setTeam_id(dto.getProgressTeam());
					int a = cntrcDivisionDAO.addCntrcDivision(cntrcDivisionVO);
					
					// 지중 계약 정보
					cntrcDivisionVO = new CntrcDivisionVO();
					cntrcDivisionVO.setCntrc_number(cntrcVO.getNumber());
					cntrcDivisionVO.setDivision("지중");
					double ratio2 = dto.getRatioUnderground() != null && !dto.getRatioUnderground().equals("0") ? Double.parseDouble(dto.getRatioUnderground()) : 0;
					cntrcDivisionVO.setRatio(ratio2);
					cntrcDivisionVO.setTeam_id(dto.getUndergroundTeam());
					int b = cntrcDivisionDAO.addCntrcDivision(cntrcDivisionVO);
					
					cnt4 = a + b;
					
					break;
				}
				
			}
			
		}
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		if (cnt1 > 0 && cnt2 > 0 && cnt3 > 0 && cnt4 > 0) {
		    retVal.put("code", "success");
		} else {
			retVal.put("code", "failed");
		}
		
//		Map<String, Object> retVal = new HashMap<String, Object>();
//		retVal.put("code", "success");
		
		return retVal;
	}
	
	@RequestMapping(value = "/filter", method = RequestMethod.GET)
	// @ResponseBody
	public String filter(Filter filter, Locale locale, Model model) throws Exception {
		// logger.info("Welcome home! The client locale is {}.", locale);

		ConstructionDAO dao = sqlsessonTemplate.getMapper(ConstructionDAO.class);

		System.out.println("filter 단계");
		model.addAttribute("count", dao.filterCount(filter));
		
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
		

		return "filter";
	}
	
	
	
	
}
