<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="layout/header.jsp"%>
<%@ page import="java.util.Date" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container">
		<table class="table table-hover">
		<thead>
			<tr>
				<th width="50%" style=text-align:center>제목</th>
				<th style=text-align:center>작성자</th>
				<th style=text-align:center>작성일</th>
				<th style=text-align:center>조회</th>
				<th style=text-align:center>추천</th>
			</tr>
		</thead>
		<c:forEach var="board" items="${boards.content}">
		<tbody>
			<tr>
				<td onClick="location.href='/board/${board.id}'">${board.title}</td>
				<td style=text-align:center>${board.user.username}</td>
				<td style=text-align:center>${fn:substring(board.createDate,0,16)}</td>
				<td style=text-align:center>${board.count}</td>
				<td style=text-align:center>${board.recommend}</td>
			</tr>

		</tbody>
		</c:forEach>
	</table>
	
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${boards.first}">
				<li class="page-item disabled"><a class="page-link" href="#">&lt;</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${boards.number-1}">&lt;</a></li>
			</c:otherwise>
		</c:choose>
		<c:forEach var="i" begin="${startPageNo}" end="${endPageNo}">
            <c:choose>
                <c:when test="${i eq boards.number+1}">
                    <li class="page-item active"><a class="page-link" href="?page=${i-1}">${i}</a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a class="page-link" href="?page=${i-1}">${i}</a></li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
		<c:choose>
			<c:when test="${boards.last}">
				<li class="page-item disabled"><a class="page-link" href="?page=${boards.number+1}">&gt;</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${boards.number+1}">&gt;</a></li>
			</c:otherwise>
		</c:choose>
	</ul>

</div>
<%@ include file="layout/footer.jsp"%>