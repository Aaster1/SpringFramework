package com.joeun.test.dto;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Board {

	private int boardNo;
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private Date updDate;
	
	//파일을 받을 수 있도록 멤버변수를 정의해줍니다.
	private List<MultipartFile> file;


	
	
	public Board() {
		
	}

	public Board(String title, String writer, String content) {
		this.title = title;
		this.writer = writer;
		this.content = content;
	}
	
	
	
	
}
