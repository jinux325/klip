package mybatis.dao.info;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.info.CnstrStatusVO;

@Component
public interface CnstrStatusDAO {

	// 공사정보 추가
	public int addCnstrStatus(CnstrStatusVO vo) throws Exception;
	
	// 공사정보 수정
	
	// 공사정보 삭제
	
	// 공사정보 목록 조회
	public List<CnstrStatusVO> listCnstrStatus() throws Exception;
	
}
