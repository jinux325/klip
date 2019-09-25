package mybatis.vo;

public class TaskConstVO {
	
	private String id;
	private String const_number;
	private String manager;
	private String content;
	private String regdate;
	private ConstructionVO constructionVO;
	
	
	public ConstructionVO getConstructionVO() {
		return constructionVO;
	}
	public void setConstructionVO(ConstructionVO constructionVO) {
		this.constructionVO = constructionVO;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getConst_number() {
		return const_number;
	}
	public void setConst_number(String const_number) {
		this.const_number = const_number;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	

}
