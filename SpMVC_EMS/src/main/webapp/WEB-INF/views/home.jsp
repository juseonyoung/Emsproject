<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h3{
text-align: center;
}
	table#ems-list {
		width:80%;
		margin:10px auto;
		border-collapse: collapse;
		border:1px solid #ccc;
	}
	
	td,td {
		border:1px solid #ccc;
	}
</style>
</head>
<body>
	<table id="ems-list">
	<h3>메일함 입니다</h3>
		<tr>
			<th>보낸이</th>
			<th>받는이</th>
			<th>발송시각</th>
			<th>발송날짜</th>
			<th>제목</th>
			<th>내용</th>
		
		</tr>
		
		<c:if test="${empty EMS_LIST }"> 
		 	<tr >
		 	<td colspan="5"> 데이터가 없습니다</td>
		 	</tr>
		</c:if>
		
		<c:forEach items="${EMS_LIST}" var="ems">
			<tr>
				<td>${ems.from_email }</td>
				<td>${ems.to_email }</td>
				<td>${ems.s_time }</td>
				<td>${ems.s_date }</td>
				<td><a href="${rootPath }/update?id=${ems.id}">${ems.s_content }</a></td>
				<td><a href="${rootPath }/delete?id=${ems.id }">삭제</a></td>
				
			</tr>
		</c:forEach>
	
		
	</table>
	
	<div>
		<a href="${rootPath }/write">새편지쓰기</a>
	</div>
</body>
</html>