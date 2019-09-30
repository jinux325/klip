package mybatis.dto;

import lombok.Data;

@Data
public class InsertDTO {

	// 업무 정보
	private int curTeam; // 업무팀
	private int curManager; // 업무담당자
	private String curDate; // 작성일
	
	// 공사 정보
	private int selComp; // 업체구분
	private String cntrcNumber; // 계약번호
	private String cnstrNumber; // 공사번호
	private String cnstrName; // 공사명

	// 공사 성격 및 실행율
	private String cnstrComp; // 계약업체
	private int selCntrc; // 계약구분
	private int selCnstr; // 공사구분
	private int selBuild; // 시공구분
	private String ratioBid; // 낙찰율
	private String ratioRun; // 실행율
	private String isBring; // 지입여부
	
	// 계약 금액
	private String cntrcAmount; // 계약금액
	private String progressAmount; // 가공금액
	private String undergroundAmount; // 지중금액
	private String ratioProgress; // 가공비율
	private String ratioUnderground; // 지중비율
	private int progressTeam; // 가공팀
	private int undergroundTeam; // 지중팀
	
	// 한전 업무 담당자
	
	
	// 공기 (시공 일정)
	private String cntrcDate; // 계약일
	private String startDate; // 착공일
	private String endDate; // 준공일
	
}
