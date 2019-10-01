package mybatis.dao;

import java.util.List;

import mybatis.vo.info.CnstrStatusVO;
import mybatis.vo.Filter;

public interface ConstructionDAO {
	/*
	 * public List<ConstructionVO> selectConstruction(); public List<TaskConstVO>
	 * selectTaskConst();
	 */
	
	
	//public List<ConstructionVO> filter(String keyword);
	public List<CnstrStatusVO> filter(Filter  filter);
	//public int  filterCount(Filter  filter);
	
	//public List<ConstructionVO> allList();
	
	public int filterCount1();
	public int filterCount2();
	public int filterCount3();
	public int filterCount4();
	public int filterCount5();
	public int filterCount6();
	public int filterCount7();
	public int filterCount8();
	public int filterCount9();
	public int filterCount10();
	public int filterCount11();
	public int filterCount12();
	public int filterCount13();
	public int filterCount14();
	public int filterCount15();
	public int filterCount16();
	public int filterCount17();
	
}
