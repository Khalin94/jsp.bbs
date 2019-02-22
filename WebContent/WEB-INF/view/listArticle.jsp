<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
<link rel="stylesheet" href="Resources/css/bootstrap.css">
</head>
<body class="text-center">
<div class="container">
	<!-- <table border="1" class="table">
 -->
	<table class="table">
		<!-- <tr>
			<td colspan="4"><a href="write.do">[게시글 쓰기]</a></td>
			<td><a href="write.do">게시글 쓰기</a></td>
		</tr>
 -->	<thead class="thead-dark">
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>

		<c:if test="${articlePage.hasNoArticles() }">
			<tbody>
				<tr>
					<!-- <td colspan="4">게시글이 없습니다. </td>
 -->
					<td>게시글이 없습니다.</td>
				</tr>
			</tbody>
		</c:if>

		<c:forEach var="article" items="${articlePage.content }">
			<tbody>
				<tr>
					<td>${article.number }</td>
					<td><a
						href="read.do?no=${article.number }&pageNo=${articlePage.currentPage }">
							<c:out value="${article.title }" />
					</a></td>
					<td>${article.writer.name }</td>
					<td>${article.readCount }</td>
				</tr>
			</tbody>
		</c:forEach>
</table>
<a class="btn btn-default" href="write.do">글쓰기</a>
		<c:if test="${articlePage.hasArticles() }">
			<!-- <td colspan="4"> -->
			<div class="text-center">
				<ul class="pagination">
					<li class="page-item"><c:if
							test="${articlePage.startPage >5 }">
							<a class="page-link"
								href="list.do?pageNo=${articlePage.startPage-5 }">이전</a>
						</c:if></li>
					<li class="page-item"><c:forEach var="pNo"
							begin="${articlePage.startPage }" end="${articlePage.endPage }">
							<a class="page-link" href="list.do?pageNo=${pNo }">${pNo }</a>
						</c:forEach></li>
					<li class="page-item"><c:if
							test="${articlePage.endPage < articlePage.totalPages }">
							<a class="page-link"
								href="list.do?pageNo=${articlePage.startPage + 5 }">다음</a>
						</c:if></li>

				</ul>
			</div>
		</c:if>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min/js"></script>
<script type="text/javascript" src="Resources/js/bootstrap.js"></script
</body>
</html>