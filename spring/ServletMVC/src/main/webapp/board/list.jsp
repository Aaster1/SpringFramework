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

	List<Board> boardList = (List<Board>)request.getAttribute("boardList");
	out.print(boardList.size());

%>

	<h1>board/list.jsp</h1>

	<%
	
		for(int i =0; i<boardList.size();i++){
		String boardMsg = boardList.get(i).toString();
		String title = boardList.get(i).getTitle();
		
		out.print(boardMsg);

		}
	%>


</body>
</html>