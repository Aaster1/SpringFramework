<%@page import="board.dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Board board = (Board) request.getAttribute("updateBoard");
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>board/insert.jsp</h1>
	<form action="<%= root %>/board/insertPro.do">
		<input type="text" name="title" value="" /><br>
		<input type="text" name="writer" value="" /><br>
		<textarea rows="5" cols="40" name="content"></textarea> <br>
		<input type="submit" value="수정">
	</form>
</body>
</html>











