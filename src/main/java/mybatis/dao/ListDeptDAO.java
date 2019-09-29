package mybatis.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.ListDeptVO;

@Component
public interface ListDeptDAO {

	// 부서 목록 추가
	
	// 부서 목록 수정
	
	// 부서 목록 삭제
	
	// 부서 목록 조회
	public List<ListDeptVO> listDept() throws Exception;
	
}
