<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입</title>
</head>
<body>
	<!-- errors 속성을 사용해 에러 유무 확인 후 맞는 에러 메시지 출력 -->
	<form action="join.do" method="post">
		<p>
			아이디:<br />
			<input type="text" name="id" value="${param.id}">
			<c:if test="${errors.id}">ID를 입력하세요.</c:if>
			<c:if test="${errors.duplicateId}">이미 사용중인 아이디입니다.</c:if>
		</p>
		<p>
			이름:<br />
			<input type="text" name="name" value="${param.name}">
			<c:if test="${errors.name}">이름을 입력하세요.</c:if>
		</p>
		<p>
			암호:<br />
			<input type="password" name="password">
			<c:if test="${errors.password}">암호를 입력하세요.</c:if>
		</p>
		<p>
			확인:<br />
			<input type="password" name="confirmPassword">
			<c:if test="${errors.confirmPassword}">확인을 입력하세요.</c:if>
		</p>
		<input type="submit" value="가입">

	</form>



</body>
</html>