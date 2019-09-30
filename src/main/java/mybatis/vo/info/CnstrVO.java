package mybatis.vo.info;

import lombok.Data;

@Data
public class CnstrVO {

	// 공사 번호
	private String number;
	// 공사 명
	private String name;
	// 공사 구분
	private int cnstr_division;
	// 시공 구분
	private int build_division;
	// 업체 구분
	private int comp_division;
	// 감독 ID
	private int supervisor_id;
	// 낙찰율
	private double ratio_bid;
	// 실행율
	private double ratio_run;
	// 지입율 여부
	private int check_bring;
	// 착공일
	private String start_date;
	// 준공일
	private String end_date;
	// 업무 담당자
	private int manager_id;
	// 작성일
	private String regdate;
	
}
