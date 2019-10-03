package mybatis.dao;

import java.util.List;

import mybatis.vo.info.CnstrStatusVO;

public interface MainDAO {

	public List<CnstrStatusVO> selectCnstrStatus();
	
}
