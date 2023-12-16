<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 정보</title>
<style>
p {
text-align:center;
margin: 50px;
}
</style>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="u" class="join.example.User">
	<jsp:setProperty name="u" property="*"></jsp:setProperty>
</jsp:useBean>

가입 정보<hr>
<p>아이디: <%=u.getId() %></p>
<p>비밀번호: <%=u.getPw() %> </p>
<p>비밀번호 확인: <%=u.getPwcheck() %></p>
<p>비밀번호 확인 질문: <%=u.getPw_question() %></p>
<p>비밀번호 확인 답변: <%=u.getPw_answer() %></p>
<p>이름: <%=u.getP_name() %></p>
<p>주소: <%=u.getAddress() %></p>
<p>이메일: <%=u.getEmail() %></p>
<p>생년월일: <%=u.getYear() %>년 <%=u.getMonth() %>월 <%=u.getDay() %>일</p>
<p>SMS 동의 여부: <%=u.getCheck1() %></p>
<p>이메일 수신 여부: <%=u.getCheck2() %></p>
<p>14세 이상 여부: <%=u.getAge() %></p>
</body>
</html>