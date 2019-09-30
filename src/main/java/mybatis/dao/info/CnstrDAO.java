package mybatis.dao.info;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.info.CnstrVO;

@Component
public interface CnstrDAO {

	// 공사 목록 추가
	public int addCnstr(CnstrVO vo) throws Exception;
	
	// 공사 목록 수정
	
	// 공사 목록 삭제
	
	// 공사 목록 조회
	public List<CnstrVO> listCnstr() throws Exception;
	
}
