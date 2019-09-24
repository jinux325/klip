package mybatis.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.CompVO;

@Component
public interface CompDAO {
	
	// 업체 등록
	
	
	// 업체 조회
	public List<CompVO> listComp() throws Exception;
	
	// 업체 수정
	
	
	// 업체 삭제
	
	
}
