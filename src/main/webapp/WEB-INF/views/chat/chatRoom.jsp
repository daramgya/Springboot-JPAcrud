<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel='stylesheet' type='text/css' href='/css/chat.css'>
</head>
<body>
	<div id='chatt'>
		<p style='font-size:24px;'>${principal.getUsername()}님 환영합니다.</p>
		<p style='font-size:24px;'>접속 버튼을 누르시면 채팅방에 연결됩니다.</p>
		<br/>
		<input type='text' id='mid' value='${principal.getUsername()}' disabled>
		<input type='button' value='접속하기' id='btnLogin'>
		<br/>
		<div id='talk'></div>
		<div id='sendZone'>
			<textarea id='msg' value='' ></textarea>
			<input type='button' value='전송' id='btnSend'>
		</div>
	</div>
	<script src='/js/chat.js'></script>
</body>
</html>


<!--
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel='stylesheet' type='text/css' href='/css/chat.css'>
</head>
<body>
	<div id='chatt'>
		<h1>WebSocket Chatting</h1>
		<input type='text' id='mid' value='다람쥐'>
		<input type='button' value='로그인' id='btnLogin'>
		<br/>
		<div id='talk'></div>
		<div id='sendZone'>
			<textarea id='msg' value='hi...' ></textarea>
			<input type='button' value='전송' id='btnSend'>
		</div>
	</div>
	<script src='/js/chat.js'></script>
</body>
</html>
-->
<%@ include file="../layout/footer.jsp"%>