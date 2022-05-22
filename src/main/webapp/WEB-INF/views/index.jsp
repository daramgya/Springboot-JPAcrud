<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="layout/header.jsp"%>
<%@ page import="java.util.Date" %>
<div class="container">


	<c:forEach var="board" items="${boards}">
		<table class="table table-hover">
		<thead>
			<tr>
				<th width="50%">제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
				<th>추천</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${board.title}</td>
				<td>${board.user.username}</td>
				<td>${board.createDate}</td>
				<td>${board.count}</td>
				<td>${board.recommend}</td>
			</tr>

		</tbody>
	</table>
	
	
	
	</c:forEach>


	<!-- 게시판 양식
	<table class="table table-hover">
		<thead>
			<tr>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
				<th>추천</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>도토리 맛없음 안 부러움 ㅅㄱ (1)</td>
				<td>핑크빈</td>
				<td>2022.05.22</td>
				<td>5</td>
				<td>1</td>
			</tr>
			<tr>
				<td>나 오늘 길가다가 도토리 주웠음ㅋㅋ (2)</td>
				<td>다람쥐</td>
				<td>2022.05.22</td>
				<td>16</td>
				<td>2</td>
			</tr>
		</tbody>
	</table>
	
	-->
	
	
</div>
<%@ include file="layout/footer.jsp"%>