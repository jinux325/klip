package mybatis.dao;

import java.util.List;

import mybatis.vo.ConstructionVO;
import mybatis.vo.Criteria;
import mybatis.vo.TaskConstVO;

public interface ConstructionDAO {
	/*
	 * public List<ConstructionVO> selectConstruction(); public List<TaskConstVO>
	 * selectTaskConst();
	 */
	public List<ConstructionVO> selectConstruction(Criteria cri);
	public List<TaskConstVO> selectTaskConst(Criteria cri);
	public int boardCountPaging(Criteria cri) ;
	
}
