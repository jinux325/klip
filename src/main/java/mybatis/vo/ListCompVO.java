package mybatis.vo;

import lombok.Data;

@Data
public class ListCompVO {

	// 기본키
	private int id;
	
	// key
	private int key;
	
	// 업체 구분 명칭
	private String name;
	
}
