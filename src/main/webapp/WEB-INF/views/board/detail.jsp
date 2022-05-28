<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">

	<!-- board를 select 하게 되면 유저 정보랑 댓글정보를 같이 들고온다.(Eager 전략) -->
	<div>
		글 번호 : <span id="id"><i>${board.id} </i></span> 작성자 : <span><i>${board.user.username} </i></span>
	</div>
	<br />

	<div class="form-group">
		<h3>${board.title}</h3>
	</div>

	<div class="form-group">
		<div>${board.content}</div>
	</div>

	<br />
	<br />

	<button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
	<c:if test="${board.user.id == principal.user.id}">
		<a href="/board/${board.id}/updateForm" class="btn btn-warning">수정</a>
		<button id="btn-delete" class="btn btn-danger">삭제</button>
	</c:if>
</div>

<script>
      $('.summernote').summernote({
        placeholder: '내용을 작성해주세요.',
        tabsize: 2,
        height: 300
      });
    </script>

<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>