<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
  Date nowTime = new Date();
  SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처 수정</title>

</head>
<body>

<h1>거래처 수정</h1>

<c:if test="${not empty customer}">
<!-- 수정 완료시 메시지 띄우기 -->
<form action="update" method="post" name="update" id="update">

<input type='reset'>
<input type="submit" value="수정하기">
<button type="button" onclick="location.href='detail?businessNumber=${customer.businessNumber}'">취소</button>
<button type="button" onclick="location.href='delete?businessNumber=${customer.businessNumber}'">삭제</button>
<button type="button" onclick="location.href='list'">목록</button><p>

사업자번호 <input type="text" value="${customer.businessNumber}" name="businessNumber" readonly><br>
거래처명 <input type="text" value="${customer.custom}" name="custom"><br>
약칭 <input type="text" value="${customer.sshort}" name="sshort"><br>
대표자 <input type="text" value="${customer.ceo}" name="ceo"><br>
담당자 <input type="text" value="${customer.chargePerson}" name="chargePerson"><br>
업태 <input type="text" value="${customer.businessCondition}" name="businessCondition"><br>
종목 <input type="text" value="${customer.item}" name="item"><br>

우편번호 <input type="text" value="${customer.postNumber}" name="postNumber" id="postNumber">
<input type="button" onclick="sample6_execDaumPostcode()" value="검색"><br>
주소 1 <input type="text" value="${customer.firstAddress}" name="firstAddress" id="firstAddress"><br>
주소 2 <input type="text" value="${customer.secondAddress}" name="secondAddress" id="secondAddress"><br>

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

전화번호 <input type="text" value="${customer.tel}" name="tel"><br>
팩스번호 <input type="text" value="${customer.fax}" name="fax"><br>
홈페이지 <input type="text" value="${customer.homepage}" name="homepage"><br>

법인여부 <input type="radio" value="Y" name="corporationWhether" <c:out value="${customer.corporationWhether == 'Y' ? 'checked' : ''}"/>>법인
<input type="radio"  value="N" name="corporationWhether" <c:out value="${customer.corporationWhether == 'N' ? 'checked' : ''}"/>>개인<br>

해외여부 <input type="radio" value="Y" name="foreignWhether" <c:out value="${customer.foreignWhether == 'Y' ? 'checked' : ''}"/>>국내
<input type="radio" value="N" name="foreignWhether" <c:out value="${customer.foreignWhether == 'N' ? 'checked' : ''}"/>>해외<br>
          
과세구분 <select name="taxWhether"><option value="Y" <c:out value="${customer.taxWhether == 'Y' ? 'selected' : ''}"/>>과세/면세</option>
              <option value="N" <c:out value="${customer.taxWhether == 'N' ? 'selected' : ''}"/>>비과세</option>
          </select><br>

국    가 <input size=1 type="text" id="countryEnglish" value="${customer.countryEnglish}" name="countryEnglish" readonly>
            <input type="text" id="countryKorean" value="${customer.countryKorean}" name="countryKorean" readonly>

<button type="button" onclick="location.href='javascript:nationSearch()'">검색</button><br>
<script type="text/javascript">
  function nationSearch() {
    window.open("<%= request.getContextPath() %>/app/nation/list", "nation", "width=500, height=500")
  }
</script>

특수관계자 <input type="checkbox" name="specialRelation" value="Y" id="specialRelation" 
  <c:out value="${customer.specialRelation == 'Y' ? 'checked' : 'unchecked'}"/>>
<input type="hidden" name="specialRelation" value='N' id="input_check_hidden"/><br>

거래중지 <input type="checkbox" name="tradeStop" value="Y" id="tradeStop" 
  <c:out value="${customer.tradeStop == 'Y' ? 'checked' : 'unchecked'}"/>>
<input type="hidden" name="tradeStop" value='N' id="input_check_hidden2"/><br>

<c:set var="contractStart"><fmt:formatDate value="${customer.contractStart}" pattern="yyyy-MM-dd" /></c:set>
<c:set var="contractEnd"><fmt:formatDate value="${customer.contractEnd}" pattern="yyyy-MM-dd" /></c:set>

<label for="start">계약기간 </label>
<input type="date" id="contractStart" name="contractStart"
       value="${contractStart}"
       min="2001-01-01" max="2100-01-01">
       
<label for="end">~ </label>
<input type="date" id="contractEnd" name="contractEnd"
       value="${contractEnd}"
       min="2001-01-01" max="2100-01-01"><br>
       
<c:set var="registrationDate"><fmt:formatDate value="${customer.registrationDate}" pattern="yyyy-MM-dd HH:mm:ss" /></c:set>
<c:set var="modificationDate"><fmt:formatDate value="${customer.modificationDate}" pattern="yyyy-MM-dd HH:mm:ss" /></c:set>

등록정보 <input type="text" value="${customer.registrationMan}" name="registrationMan">
<input type="text" name="registrationDate" value="${registrationDate}" readonly><br>

변경정보 <input type="text" value="${customer.modificationMan}" name="modificationMan">
<input type="text" name="modificationDate" value="<%= sf.format(nowTime) %>" readonly><br>

<table>
<tbody>
<tr>
  <td>(거래처 계좌정보)</td>
</tr>
<tr>
  <td style="text-align: center;"><b>사무소</b></td>
  <td style="text-align: center;"><b>은행</b></td>
  <td style="text-align: center;"><b>계좌번호</b></td>
</tr>
<tr>
  <td><input type="text" value="${customer.factory}" name="factory"><br></td>
  <td><input type="text" value="${customer.tradeBank}" name="tradeBank"><br></td>
  <td><input type="text" value="${customer.accountNo}" name="accountNo"><br></td>
</tr>
</tbody>
</table>

</form>
</c:if>

<script>
"use strict"

if(document.getElementById("specialRelation").checked) {
    document.getElementById("input_check_hidden").disabled = true;
} else(document.getElementById("specialRelation").unchecked) {
  document.getElementById("input_check_hidden").disabled = false;
}

if(document.getElementById("tradeStop").checked) {
    document.getElementById("input_check_hidden2").disabled = true;
} else(document.getElementById("tradeStop").unchecked) {
  document.getElementById("input_check_hidden2").disabled = flase;
}

<%-- 220815
$(form).on("submit",function(e){
   e.preventDefault();
   var businessNumber=$(form.businessNumber).val();
   var custom=$(form.custom).val();
   
   if(businessNumber == '') {
     alert("사업자번호 미입력"); 
   } else if(custom == '') {
     alert("거래처명 미입력")
   } else {
     alert("수정되었습니다.");
     form.submit();
   }
});
--%>
</script>

</body>
</html>







