<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
  Date nowTime = new Date();
  SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>

<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>거래처 등록</title>

</head>
<body>
<form action="add" method="post" name="form">
<input type='reset'>
<input type="submit" value="등록">
<button type="button" onclick="location.href='updateForm?businessNumber=${customer.businessNumber}'">수정</button>
<button type="button" onclick="location.href='delete?businessNumber=${customer.businessNumber}'">삭제</button><p></p>
<table>


<tr>
	<td>사업자번호</td>
	<td>
	 <input type="text" size=8 name="businessNumber">
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 약&nbsp;&nbsp;&nbsp;칭&nbsp;
	 <input type="text" size=8 name="sshort"><br>
	</td>
</tr>

<tr>
	<td>거&nbsp;래&nbsp;처&nbsp;명</td>
	<td><input type="text" size=50 name="custom"><br></td>
</tr>

<tr>
	<td>대&nbsp;표&nbsp;자</td>
	<td>
	 <input type="text" size=8 name="ceo">
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 담&nbsp;당&nbsp;자
	 <input type="text" size=8 name="chargePerson"><br>
	</td>
</tr>

<tr>
	<td>업&nbsp;&nbsp;&nbsp;태</td>
	<td>
		<input type="text" size=8 name="businessCondition">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		종&nbsp;&nbsp;&nbsp;&nbsp;목
	</td>
	<td><input type="text" size=8 name="item"><br></td>
</tr>

<tr>
	<td>우&nbsp;편&nbsp;번&nbsp;호</td>
	<td>
	 <input type="text" size=8 name="postNumber" id="postNumber">
	 <input type="button" onclick="sample6_execDaumPostcode()" value="검색">
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 주&nbsp;&nbsp;소&nbsp;1
	 <input type="text" name="firstAddress" id="firstAddress"><br>
	</td>
</tr>

<tr>
  <td>주&nbsp;&nbsp;소&nbsp;2</td>
  <td><input type="text" size=70 name="secondAddress" id="secondAddress"><br></td>
</tr>

<tr>
	<td>전&nbsp;화&nbsp;번&nbsp;호</td>
	<td><input type="text" size=8 name="tel"></td>
	<td style="text-align: right;">팩&nbsp;스&nbsp;번&nbsp;호</td>
	<td><input type="text" size=8 name="fax"><br></td>
</tr>

<tr>
  <td>홈&nbsp;페&nbsp;이&nbsp;지</td>
  <td><input type="text" size=65 name="homepage"><br></td>
</tr>

<tr>
  <td>법&nbsp;인&nbsp;여&nbsp;부</td>
  <td>
    <input type="radio" name="corporationWhether" value="Y">법인
    <input type="radio" name="corporationWhether" value="N">개인
  </td>
  <td style="text-align: right;">해&nbsp;외&nbsp;여&nbsp;부</td>
  <td>
    <input type="radio" name="foreignWhether" value="Y">국내
    <input type="radio" name="foreignWhether" value="N">해외<br>
  </td>
</tr>

<tr>
	<td>과&nbsp;세&nbsp;구&nbsp;분</td>
	<td>
		<select name="taxWhether">
		  <option value="Y">과세/면세</option>
		  <option value="N">비과세</option>
		</select>
	</td>
  <td style="text-align: right;">국&nbsp;&nbsp;&nbsp;가</td>
	<td><input type="text" name="nationS"></td>
	<td>
		<select name="nation">
	    <option value="대한민국">대한민국</option>
	    <option value="중국">중국</option>
	    <option value="일본">일본</option>
	    <option value="미국">미국</option>
	    <option value="필리핀">필리핀</option>
	    <option value="영국">영국</option>
		</select>
	</td>
	<td><button>검색</button><br></td>
</tr>

<tr>
	<td>특수관계자<input type="hidden" name="specialRelation" value="Y" /></td>
	<td><input type="checkbox" name="specialRelation" value="N" /></td>
  <td style="text-align: right;">
    거&nbsp;래&nbsp;중&nbsp;지
    <input type="hidden" name="tradeStop" value="Y" />
  </td>
  <td><input type="checkbox" name="tradeStop" value="N" /><br></td>
</tr>

<tr>
	<td><label for="start">계&nbsp;약&nbsp;기&nbsp;간</label></td>
	<td><input type="date" id="contractStart" name="contractStart"
    value="2001-01-01"
	  min="2001-01-01" max="2100-01-01">
	<label for="end">~ </label>
	<input type="date" id="contractEnd" name="contractEnd"
	      value="2001-12-31"
	      min="2001-01-01" max="2100-01-01"><br>
	</td>
</tr>

<tr>
	<td>등&nbsp;록&nbsp;정&nbsp;보</td>
	<td>
	 <input type="text" size=4 name="registrationMan">
	 <input type="text" size=14 name="registrationDate" value="<%= sf.format(nowTime) %>" readonly/>
	</td>            
	<!-- 변경일 넘기기로 바꾸기 -->
	<td style="text-align: right;">변&nbsp;경&nbsp;정&nbsp;보</td>
	<td>
	 <input type="text" size=4 name="modificationMan">
	 <input type="text" size=14 name="modificationDate" value="<%= sf.format(nowTime) %>" readonly/><br>
	</td>
</tr>

</table>
</form>
</body>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postNumber').value = data.zonecode;
                document.getElementById("firstAddress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("secondAddress").focus();
            }
        }).open();
    }
</script>

<script>
$(form).on("submit",function(e){
	 e.preventDefault();
	 var businessNumber=$(form.businessNumber).val();
	 var custom=$(form.custom).val();
	 
	 if (businessNumber == '') {
		 alert("사업자번호 미입력"); 
	 } else if(custom == '') {
		 alert("거래처명 미입력")
	 } else {
		 form.submit();
	 }
	 
});
</script>

</html>








