<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입</title>
<link rel="stylesheet" href="Resources/css/bootstrap.css">
</head>
<body class="text-center">

<form action="join.do" method="post">
<p>
<mark>아이디</mark> <br/><input type="text" name="id" value="${param.id }"><br />
<c:if test="${errors.id }"> id를 입력하세요.</c:if>
<c:if test="${errors.duplicateId }">이미 사용한 아이디입니다.</c:if>
</p>
<p>
<mark>이름</mark> <br /><input type="text" name="name" value="${param.name }"><br />
<c:if test="${errors.name }">이름을 입력하세요.</c:if>
</p>
<p>
<mark>비밀번호</mark> <br /><input type="password" name="password" value="${param.password }"><br />
<c:if test="${errors.password }">비밀번호를 입력하세요.</c:if>
</p>
<p>
<mark>비밀번호 확인</mark> <br /><input type="password" name="confirmPassword"> <br />
<c:if test="${errors.confirmPassword }">비밀번호를 한번 더 입력하세요.</c:if>
<c:if test="${errors.notMatch }">비밀번호와 일치하지 않습니다. </c:if>
</p>

<input type="submit" value="회원가입" class="btn-primary">

</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min/js"></script>
<script type="text/javascript" src="Resources/js/bootstrap.js"></script>
</body>
</html>