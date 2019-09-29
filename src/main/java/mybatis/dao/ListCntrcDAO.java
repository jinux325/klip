package mybatis.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.ListCntrcVO;

@Component
public interface ListCntrcDAO {

	// 계약 구분 목록 추가

	// 계약 구분 목록 수정
		
	// 계약 구분 목록 삭제
	
	// 계약 구분 목록 조회
	public List<ListCntrcVO> listCntrcDivision() throws Exception;
	
}
