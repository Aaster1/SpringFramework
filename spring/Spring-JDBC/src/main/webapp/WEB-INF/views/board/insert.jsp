<%@page import="com.joeun.test.dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	<h1>글쓰기</h1>
	<form action="${pageContext.request.contextPath }/board/insertPro" method="POST">
		<label for="title">제목</label>
		<input type="text" name="title" id="title"/><br>
		<label for="writer">작성자</label>
		<input type="text" name="writer" id="writer"/><br>
		<label for="content">내용</label>
		<textarea rows="5" cols="40" name="content" id="content"></textarea> <br>
		<input type="submit" value="등록">
	</form>
</body>
</html>











