package mybatis.vo;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class Filter {
	
	private String keyword;
	private int searchType;
	private int const_day;
	

	public Filter() {
		this.searchType = 0;
		this.keyword = "전체";
		this.const_day = 10;
	}
	
	
	
	public int getConst_day() {
		return const_day;
	}
	public void setConst_day(int const_day) {
		this.const_day = const_day;
	}



	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getSearchType() {
		return searchType;
	}

	public void setSearchType(int searchType) {
		this.searchType = searchType;
		
		/*
		 * if(searchType == 0) { this.keyword = "전체"; }else if(searchType == 1) {
		 * 
		 * }
		 */
	}

	/*
	 * public String makeQuery(String filter){ UriComponents uriComponents =
	 * UriComponentsBuilder.newInstance() .queryParam("searchType",searchType)
	 * .queryParam("keyword",keyword) .queryParam("const_day",const_day)
	 * //.queryParam("perPageNum", cri.getPerPageNum()) .build();
	 * System.out.println(uriComponents.toUriString()); return
	 * uriComponents.toUriString(); }
	 */
	public String makeQuery(int filter){
		String key = searchKey(filter);
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				/* .queryParam("searchType",filter) */
									 .queryParam("keyword", key)
									 .build();
		System.out.println(filter+"@@@");
		System.out.println(uriComponents.toUriString());
		return uriComponents.toUriString();
	}
	
	private String searchKey(int filter) {
		String keyword="전체공사";
		
		if(filter == 0) {
			keyword="전체공사";
		}else if(filter ==1) {
			keyword="시공대기";
		}else if(filter ==2) {
			keyword="장기미결";
		}else if(filter ==3) {
			keyword="공사취소";
		}else if(filter ==4) {
			keyword="철거대기";
		}else if(filter ==5) {
			keyword="굴착대기";
		}else if(filter ==6) {
			keyword="시공중";
		}else if(filter ==7) {
			keyword="설계변경";
		}else if(filter ==8) {
			keyword="시공완료";
		}else if(filter ==9) {
			keyword="환입대기";
		}else if(filter ==10) {
			keyword="자재대기";
		}else if(filter ==11) {
			keyword="사진대기";
		}else if(filter ==12) {
			keyword="정산완료";
		}else if(filter ==13) {
			keyword="예산부족";
		}else if(filter ==14) {
			keyword="준공완료";
		}else if(filter ==15) {
			keyword="계산서완료";
		}else if(filter ==16) {
			keyword="수금완료";
		}
		
		return keyword;
	}
	
}
