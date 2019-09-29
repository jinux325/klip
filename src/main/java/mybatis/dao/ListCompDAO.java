package mybatis.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.ListCompVO;

@Component
public interface ListCompDAO {

	// 업체 구분 목록 추가
	
	// 업체 구분 목록 수정
	
	// 업체 구분 목록 삭제
	
	// 업체 구분 목록 조회
	public List<ListCompVO> listCompDivision() throws Exception;
	
}
