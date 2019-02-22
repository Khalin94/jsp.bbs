<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>

<form action="modify.do" method = "post">
<p>
번호 : <br/>${modReq.articleNumber } <input type="hidden" name="no" value="${modReq.articleNumber }">
</p>

<p>
제목 : <br/><input type="text" name="title" value="${modReq.title }">
		<c:if test="${errors.title }">제목을 입력하세요.</c:if>
</p>

<p>
내용 : <br/>
<textarea rows="5" cols="30" name="content">${modReq.content }</textarea>
</p>
<input type="submit" value="수정">
</form>

</body>
</html>