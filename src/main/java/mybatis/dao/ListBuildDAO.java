package mybatis.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.ListBuildVO;

@Component
public interface ListBuildDAO {

	// 시공 구분 목록 추가
	
	// 시공 구분 목록 수정
	
	// 시공 구분 목록 삭제
	
	// 시공 구분 목록 조회
	public List<ListBuildVO> listBuildDivision() throws Exception;
	
}
