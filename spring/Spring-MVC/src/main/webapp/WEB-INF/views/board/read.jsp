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
	<h1>board/read.jsp</h1>
	<h2>${board.title}</h2>
	<h3>${board.writer}</h3>
	<p>
		${board.content}
	</p>
	<form action="${pageContext.request.contextPath}/board/deletePro" method="GET">
		<input type="hidden" name="boardNo" value="10">
		<input type="submit" value="삭제">
	</form>
</body>
</html>




