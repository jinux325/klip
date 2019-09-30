package mybatis.dao.info;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.info.CntrcDivisionVO;

@Component
public interface CntrcDivisionDAO {

	// 계약(공사 구분) 정보 추가
	public int addCntrcDivision(CntrcDivisionVO vo) throws Exception;
	
	// 계약(공사 구분) 정보 수정
	
	// 계약(공사 구분) 정보 삭제
	
	// 계약(공사 구분) 정보 목록 조회
	public List<CntrcDivisionVO> listCntrcDivision() throws Exception;
		
}
