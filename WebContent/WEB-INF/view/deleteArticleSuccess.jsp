<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 완료</title>
</head>
<body>
게시글이 삭제되었습니다.
<br/>
${ctxPath = pageContext.request.contextPath ; '' }
<a href="${ctxPath }/article/list.do">[목록]</a>
</body>
</html>