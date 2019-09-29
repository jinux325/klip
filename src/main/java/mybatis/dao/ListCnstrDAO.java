package mybatis.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.ListCnstrVO;

@Component
public interface ListCnstrDAO {

	// 공사 구분 목록 추가
	
	// 공사 구분 목록 수정
	
	// 공사 구분 목록 삭제
	
	// 공사 구분 목록 조회
	public List<ListCnstrVO> listCnstrDivision() throws Exception;
	
}
