package mybatis.vo.info;

import lombok.Data;

@Data
public class CnstrStatusVO {
	
	// 기본키
	private int id;
	// 공사 번호
	private String cnstr_number;
	// 업무 담당자 ID
	private int manager_id;
	// 진행 상태
	private String status;
	// 작성일
	private String regdate;
	
	private CnstrVO cnstrvo;
	
	
}
