<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Spring JDBC
	
	<c:if test="${userId !=null}">
		<h3>${userId}</h3>
	</c:if>
</h1>

<ul>
	<li> <a href="${pageContext.request.contextPath}/user/login">로그인</a> </li>
	<li> <a href="${pageContext.request.contextPath}/user/join">회원가입</a> </li>
	<li> <a href="${pageContext.request.contextPath}/board/list">게시판</a> </li>
</ul>

</body>
</html>
