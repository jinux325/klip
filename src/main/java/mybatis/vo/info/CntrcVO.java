package mybatis.vo.info;

import lombok.Data;

@Data
public class CntrcVO {

	// 계약 번호
	private String number;
	// 공사 번호
	private String cnstr_number;
	// 계약 구분
	private int cntrc_division;
	// 계약 업체
	private String enterprise;
	// 계약 금액
	private int amount;
	// 작성일
	private String regdate;
	
}
