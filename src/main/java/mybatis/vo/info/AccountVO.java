package mybatis.vo.info;

import lombok.Data;
import mybatis.vo.info.AccountVO;

@Data
public class AccountVO {

	// 기본키
	private int id;
	
	// team ID
	private int manager_id;
	
	// 이름
	private String name;
	
	// 보안 등급
	private int grade;
	
	// 직급
	private String position;
	
	// 아이디
	private String user_id;
	
	// 패스워드
	private String user_pw;
	
}
