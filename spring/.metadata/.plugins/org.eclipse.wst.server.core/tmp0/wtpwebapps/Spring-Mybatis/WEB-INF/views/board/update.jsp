<%@page import="com.joeun.test.dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 수정</h1>
	
	<form action="${pageContext.request.contextPath}/board/update" method="POST">
		
		<input type="hidden" name="boardNo" value="${board.boardNo}">
		<label for="title">제목</label>
		<input type="text" name="title" id="title" value="${board.title}" /><br>
		<label for="writer">작성자</label>
		<input type="text" name="writer" id="writer" value="${board.writer}" /><br>
		<label for="content">내용</label>
		<textarea rows="5" cols="40" name="content" id="content" >${board.content}</textarea> <br>
		<input type="submit" value="수정">
	</form>
	<form action="${pageContext.request.contextPath}/board/delete" method="POST">
		<input type="hidden" name="boardNo" value="${board.boardNo }">
		<input type="submit" value="삭제">
	</form>
</body>
</html>











