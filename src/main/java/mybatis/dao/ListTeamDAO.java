package mybatis.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import mybatis.vo.ListTeamVO;

@Component
public interface ListTeamDAO {

	// 팀 목록 추가
	
	// 팀 목록 수정
	
	// 팀 목록 삭제
	
	// 팀 목록 조회
	public List<ListTeamVO> listTeam() throws Exception;
	
}
