package com.joeun.test.dto;

import lombok.Data;

@Data
public class Option {

	private String keyword;
	private int searchType;
	
	public Option() {
		this.keyword="";
		this.searchType=0;
	}
	
}
