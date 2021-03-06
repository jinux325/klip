package mybatis.dao.info;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.dao.info.AccountDAO;
import mybatis.vo.info.AccountVO;

@Component
public interface AccountDAO {

	// 계정(담당자) 목록 추가
	
	// 계정(담당자) 목록 수정
	
	// 계정(담당자) 목록 삭제
	
	// 계정(담당자) 목록 조회
	public List<AccountVO> listAccount() throws Exception;
	
}
