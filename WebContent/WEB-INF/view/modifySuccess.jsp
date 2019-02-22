<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 완료</title>
</head>
<body>

게시글이 수정되었습니다.
<br>
${ctxPath = pageContext.request.contextPath ; '' }
<a href="${ctxPath }/article/list.do">[목록보기]</a>
<a href="${ctxPath }/article/read.do?no=${modReq.articleNumber}">[내용 보기]</a>
</body>
</html>