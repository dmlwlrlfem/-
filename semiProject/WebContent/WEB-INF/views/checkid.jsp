<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    boolean result = (Boolean)request.getAttribute("result");
    String checkId = (String)request.getAttribute("checkId");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
		#checked-container{
			text-align : center;
			padding-top : 50px;
		}
		#checked{
			color : red;
			font-weight : bold;
		}
	</style>
</head>
<body>
	<div id="checked-container">
		<%if(result == true) {%>
			[<span><%=checkId %></span>]는 사용이 가능합니다.
			<br><br>
			<button onclick="closeWindow('<%=checkId%>');">닫기</button>
		<%}else{ %>
			[<span id="checked"><%=checkId %></span>]는 이미 사용중입니다.
			<br><br>
			<form action="/checkedid">
				<input type="text" name="checkId" placeholder="아이디를 입력하세요"><br>
				<button type="submit">중복검사</button>
			</form>
		
		<%} %>
	</div>
	<script>
		function closeWindow(checkId){
			var userId = opener.document.getElementById("userId");
			var userPw = opener.document.getElementById("userPw");
			userId.value = checkId;
			userPw.focus();
			self.close();
		}
	</script>
</body>
</html>