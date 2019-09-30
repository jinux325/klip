package mybatis.vo.info;

import lombok.Data;

@Data
public class CntrcDivisionVO {

	// 기본키
	private int id;
	// 계약 번호
	private String cntrc_number;
	// 구분
	private String division;
	// 계약 비율
	private double ratio;
	// 업무팀
	private int team_id;
	
}
