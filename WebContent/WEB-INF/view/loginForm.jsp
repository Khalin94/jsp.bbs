<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="Resources/css/bootstrap.css">
</head>
<body class="text-center">
<br/>
<br/>

<form action="login.do" method="post">
<c:if test="${errors.idOrPasswordNotMatch }">
아이디와 비밀번호가 일치하지 않습니다.
</c:if>
<p>
아이디 : <br /><input type="text" name="id" value="${param.id }">
<c:if test="${errors.id }">아이디가 일치하지 않습니다. </c:if>
</p>

<p>
비밀번호 : <br /> <input type="password" name="password" value="${param.password }">
<c:if test="${errors.password }"> 비밀번호가 일치하지 않습니다. </c:if>
</p>

<input type="submit" value="로그인" class="btn-primary">
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min/js"></script>
<script type="text/javascript" src="Resources/js/bootstrap.js"></script>
</body>
</html>