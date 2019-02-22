<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome!</title>
<link rel="stylesheet" href="Resources/css/bootstrap.css">
</head>
<body class="text-center"> 
<u:isLogin>
${authUser.name }님 안녕하세요.
<button type="button" onclick="location.href='logout.do'" class="btn-danger">로그아웃</button>
<button type="button" onclick="location.href='changePwd.do'" class="btn-warning">비밀번호 변경</button>
<button type="button" onclick="location.href='article/list.do'" class="btn">게시판 가기</button>
<!--
<a href="logout.do">[로그아웃]</a>
<a href="changePwd.do">[비밀번호 변경]</a>
<a href="article/list.do">[게시판 가기]</a>
 -->
</u:isLogin>
<u:notLogin>
<button type="button" onclick="location.href='join.do'" class="btn-primary">회원가입</button>
<button type="button" onclick="location.href='login.do'" class="btn-success">로그인</button>
<!-- 
<button class="btn-primary"><a href="join.do">[회원가입]</a></button>
<a href="login.do">[로그인]</a>
 -->
</u:notLogin>

<br />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min/js"></script>
<script type="text/javascript" src="Resources/js/bootstrap.js"></script>
</body>
</html>