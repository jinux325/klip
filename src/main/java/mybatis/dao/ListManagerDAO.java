package mybatis.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.ListManagerVO;

@Component
public interface ListManagerDAO {

	// 담당자 목록 추가
	
	// 담당자 목록 수정
	
	// 담당자 목록 삭제
	
	// 담당자 목록 조회
	public List<ListManagerVO> listManager(String value) throws Exception;
}
