<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${tb}"></c:out>
	
	<c:forEach items="${sessionScope.dsht }" var="ht">
	${ht }
	</c:forEach>
	Ds cac loai
	<c:forEach items="${dsloai }" var="loai">
		<c:out value="${loai.getMaloai() }">
			${loai.getTenloai() }		
		</c:out>
	
	</c:forEach>
</body>
</html>