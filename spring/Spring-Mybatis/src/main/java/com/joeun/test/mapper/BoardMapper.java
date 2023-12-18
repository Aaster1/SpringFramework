package com.joeun.test.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.joeun.test.dto.Board;
import com.joeun.test.dto.Option;


@Mapper
public interface BoardMapper {


	  // 메소드 명은 Mapper.xml 매핑 파일의 SQL 태그 id 값과 일치해야한다.
	  public List<Board> list() throws Exception;

	  
	  	//boardMapper.xml insert, update, delete 태그 요청의 경우 반환결과는 DB에 적용된 행의 수이다.
		public Integer insert(Board board) throws Exception;

		public Board select(Integer boardNo) throws Exception;

		//public Integer update(Board board) throws Exception;
		public Integer update(Map<String,String> map) throws Exception;

		//@Param("파라미터명") : XML 매핑 파일의 SQL 쿼리에서 매핑될 파라미터명을 명시하는 어노테이션
		public Integer delete(@Param("boardNo") Integer boardNo) throws Exception;

		public List<Board> search(Option option) throws Exception;
	
		
		
}
