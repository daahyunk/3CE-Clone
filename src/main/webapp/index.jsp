<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3CE</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
function validate() {
	var form = document.info;
	
	var regul1 = /^[a-z0-9]{4,16}$/; //아이디 유효성
    var regul2 = /^(?!((?:[A-Za-z]+)|(?:[~!@#$%^&*()_+=]+)|(?:[0-9]+))$)[A-Za-z\d~!@#$%^&*()_+=]{10,16}$/; //비번 유효성
    
	if (form.id.value ==""){
		alert("아이디를 입력해주세요.");
		form.id.focus();
		return false;
	} 
	
	if (!regul1.test(form.id.value)){
		alert("아이디는 4~16자의 영어 소문자와 숫자로만 입력 가능합니다.");
		return false;
	}
	
	if (form.pw.value ==""){
	    alert("비밀번호를 입력해 주세요");
	    form.pw.focus();
	    return false;
	}
	if (form.pwcheck.value ==""){
        alert("비밀번호 확인란을 입력해 주세요");
        form.pwcheck.focus();
        return false;
 	}
	if (!regul2.test(form.pw.value)){
		alert("비밀번호는 10~16자의 영문 대소문자/숫자/특수문자 중 2가지 이상 조합으로만 입력 가능합니다.");
		return false;
	}
	if (form.pw.value != form.pwcheck.value) {
        alert("비밀번호가 일치 하지 않습니다.");
        form.pw.focus();
        form.pwcheck.focus();
        return false;
    }
	
	if (form.pw_answer.value ==""){
	    alert("비밀번호 확인 답변란을 입력해 주세요");
	    form.pw_answer.focus();
	    return false;
	}
	if (form.email.value ==""){
	    alert("이메일을 입력해주세요.");
	    form.email.focus();
	    return false;
	}
	if (form.p_name.value ==""){
	    alert("이름을 입력해주세요.");
	    form.p_name.focus();
	    return false;
	}
	if (form.address.value ==""){
	    alert("이름을 입력해주세요.");
	    form.address.focus();
	    return false;
	}
	if (form.year.value ==""){
	    alert("생년월일을 모두 입력해주세요.");
	    form.address.focus();
	    return false;
	}
	if (form.month.value ==""){
	    alert("생년월일을 모두 입력해주세요.");
	    form.address.focus();
	    return false;
	}
	if (form.day.value ==""){
	    alert("생년월일을 모두 입력해주세요.");
	    form.address.focus();
	    return false;
	}
	var agreement1 = document.getElementById('sms');
	var agreement2 = document.getElementById('sms2');
	if(agreement1.checked == false && agreement2.checked == false) {
        alert("SMS 여부란을 체크해주세요.")
        return false;
    }
	var agreement4 = document.getElementById('emailcheck');
	var agreement5 = document.getElementById('emailcheck2');
	if(agreement4.checked == false && agreement5.checked == false) {
        alert("이메일 수신 여부란을 체크해주세요.")
        return false;
    }
	var agreement3 = document.getElementById('age');
	if(agreement3.checked == false) {
        alert("14세 이상란을 체크해주세요")
        return false;
    }
	}
</script>
<body>
<div id="form">
<form action="proc.jsp" name="info" method="post" accept-charset="utf-8" onsubmit="return validate();">
<table class=t1>
<tr>
<td>기본 정보</td></tr>
</table>
 <table class=t2>
            <tr>
                <td id=question>아이디 *</td>
                <td><input id="id" type="text" name="id" style="width:380px; height:30px">
                <br><p>(영문 소문자/숫자, 4~16자)</p></td>
                
            </tr>
            <tr>
                <td id=question>비밀번호 *</td>
                <td><input id="pw" type="password" name="pw" style="width:380px; height:30px">
                <br><p>(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</p></td>
            </tr>
            <tr>
            <td id=question>비밀번호 확인 * </td>
            <td><input id="pwcheck" type="password" name="pwcheck" style="width:380px; height:30px"></td>
            </tr>
            <tr>
            	<td id=question>비밀번호 확인 질문 *</td>
            	<td><select id="pw_question" name="pw_question">
				    <option value="기억에 남는 추억 장소는?">기억에 남는 추억 장소는?</option>
				    <option value="자신의 인생 좌우명은?">자신의 인생 좌우명은?</option>
				    <option value="자신의 보물 제 1호는?">자신의 보물 제 1호는?</option>
				    <option value="가장 기억에 남는 선생님 성함은?">가장 기억에 남는 선생님 성함은?</option>
				    <option value="타인이 모르는 자신만의 신체비밀이 있다면?">타인이 모르는 자신만의 신체비밀이 있다면?</option>
				    <option value="추억하고 싶은 날짜가 있다면?">추억하고 싶은 날짜가 있다면?</option>
					</select>
				</td>
            </tr>
            <tr>
            	<td id=question>비밀번호 확인 답변 *</td>
            	<td><input id="pw_answer" type="text" name="pw_answer" style="width:380px; height:30px"></td>
            </tr>
            <tr>
            	<td id=question>이름 *</td>
            	<td><input id="p_name" type="text" name="p_name" style="width:380px; height:30px"></td>
            </tr>
            <tr>
            	<td id=question>주소 *</td>
            	<td><input id="address" type="text" name="address" style="width:380px; height:30px"></td>
            </tr>
            <tr>
            	<td id=question>이메일 *</td>
            	<td><input id="email" type="email" name="email" style="width:380px; height:30px"></td>
            </tr>
            <tr>
            	<td id=question>생년월일 *</td>
            	<td><input id="year" type="text" name="year" style="width:80px; height:30px"> 년
				<input id="month" type="text" name="month"style="width:80px; height:30px"> 월
				<input id="day" type="text" name="day"style="width:80px; height:30px"> 일</td>
            </tr>
            <tr>
            	<td id=question>SMS 동의 여부 *</td>
            	<td><input id="sms" type="radio" name="check1" value="동의">동의
            	<input id="sms2" type="radio" name="check1" value="미동의"> 미동의
            	</td>
            	
            </tr>
            <tr>
            	<td id=question>이메일 수신여부 *</td>
            	<td><input id="emailcheck" type="radio" name="check2" value="동의">동의
            	<input id="emailcheck2" type="radio" name="check2" value="미동의"> 미동의</td>
            </tr>
            <tr>
            	<td id=question>만 14세 이상 *</td>
            	<td><input id="age" name="age" type="checkbox" value="예">예</td>
            </tr>
        </table>
        <input id="submit" type="submit" value="Create Account">
</form>
</div>
</body>
</html>