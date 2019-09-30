package mybatis.dao.info;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.info.CntrcVO;

@Component
public interface CntrcDAO {

	// 계약 정보 추가
	public int addCntrc(CntrcVO vo) throws Exception;
	
	// 계약 정보 수정
	
	// 계약 정보 삭제
	
	// 계약 정보 목록 조회
	public List<CntrcVO> listCntrc() throws Exception;

	// 계약 정보 번호 설정
	public int getCntrcNumber(String number) throws Exception;
	
}
