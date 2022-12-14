package com.ieetu.study.paging;

import lombok.Data;

@Data
public class Criteria {
	// 페이징 처리
	private int pageNum;
	
	private int amount;
	
	// 검색 
	private String type;
	
	private String keyword;
	
	public Criteria() {
	
	    this.pageNum = 1;
	    
	    this.amount = 10;
   
	}
	
	public Criteria(int pageNum, int amount) {
		
	    this.pageNum = pageNum;
		
	    this.amount = amount;
	    
	}
	
}
