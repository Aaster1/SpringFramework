<%@page import="board.dto.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	Board board = (Board)request.getAttribute("board");
	String root = request.getContextPath();
%>

	<h1>board/read.jsp</h1>

	<%
	
		String boardMsg = board.toString();
		String title = board.getTitle();
		
		out.print(boardMsg);
		out.print(title);

	%>
	<form action="<%= root %>/board/deletePro.do">
		<input type="hidden" name="boardNo" value="<%=board.getBoardNo()%>">
		<input type="submit" value="삭제">
	</form>


</body>
</html>