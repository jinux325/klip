package mybatis.vo;

import lombok.Data;

@Data
public class ListTeamVO {
	
	// 기본키
	private int id;
	
	// 부서 ID
	private int dept_id;
	
	// key
	private int key;
	
	// 팀명
	private String name;
	
}
