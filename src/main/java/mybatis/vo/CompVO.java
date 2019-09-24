package mybatis.vo;

public class CompVO {
	private String id;
	private String name;
	private String address;
	private String division;
	private double ratio_bid;
	private double ratio_run;
	private double ratio_bring;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public double getRatio_bid() {
		return ratio_bid;
	}
	public void setRatio_bid(double ratio_bid) {
		this.ratio_bid = ratio_bid;
	}
	public double getRatio_run() {
		return ratio_run;
	}
	public void setRatio_run(double ratio_run) {
		this.ratio_run = ratio_run;
	}
	public double getRatio_bring() {
		return ratio_bring;
	}
	public void setRatio_bring(double ratio_bring) {
		this.ratio_bring = ratio_bring;
	}
	
}
