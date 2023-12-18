<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 목록</h1>


	<a href="${pageContext.request.contextPath }/board/insert">글쓰기</a>
	
	<form action="${pageContext.request.contextPath}/board/search" method="POST">
	
		<label for="search">검색</label>
		
		<select name="searchType">
			<option value="0">전체</option>
			<option value="1">제목</option>
			<option value="2">제목+작성자</option>
			<option value="3">작성자</option>
		</select>
		
		<input type="text" name="search" id="search">
		
		<input type="submit" value="검색">
	
	</form>

	<table border="1">
	
	<tr>
	
	<th>번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>내용</th>
	<th>작성일자</th>
	<th>등록일자</th>
	<th>조회수</th>
	
	</tr>
	
	<c:forEach var="board" items="${boardList }">
	
		<colgroup>
			<col align = center>
		</colgroup>
		<tr>
		<td align="center">${board.boardNo }</td>
		<td width="300"><a href="${pageContext.request.contextPath }/board/read?boardNo=${board.boardNo}">${board.title }</a></td>
		<td align="center" width="120">${board.writer }</td>
		<td align="center">${board.content }</td>
		<td align="center"><f:formatDate value="${board.regDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		<td align="center"><f:formatDate value="${board.updDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		<td align="center">${board.views }</td>
		</tr>
	
	
	</c:forEach>
	
	</table>
		
	
</body>
</html>











