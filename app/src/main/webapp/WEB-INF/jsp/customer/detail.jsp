<%@page import="java.util.Date"%>
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처 정보</title>

</head>
<body>

<h1>거래처 정보</h1>

<c:if test="${not empty customer}, ${not empty account}">

<form action="detail" method="get" name="detail">

<input type='reset'>
<input type="submit" value="등록">
<button type="button" onclick="location.href='updateForm?businessNumber=${customer.businessNumber}'">수정</button>
<button type="button" onclick="location.href='delete?businessNumber=${customer.businessNumber}'">삭제</button><p>
<button type="button" onclick="location.href='list'">목록</button>

사업자번호 <input type="text" value="${customer.businessNumber}" name="businessNumber" readonly><br>
거래처명 <input type="text" value="${customer.custom}" name="custom" readonly><br>
약칭 <input type="text" value="${customer.sshort}" name="sshort" readonly><br>
대표자 <input type="text" value="${customer.ceo}" name="ceo" readonly><br>
담당자 <input type="text" value="${customer.chargePerson}" name="chargePerson" readonly><br>
업태 <input type="text" value="${customer.businessCondition}" name="businessCondition" readonly><br>
종목 <input type="text" value="${customer.item}" name="item" readonly><br>

우편번호 <input type="text" value="${customer.postNumber}" name="postNumber" id="postNumber" readonly>
<input type="button" onclick="sample6_execDaumPostcode()" value="검색"><br>
주소 1 <input type="text" value="${customer.firstAddress}" name="firstAddress" id="firstAddress" readonly><br>
주소 2 <input type="text" value="${customer.secondAddress}" name="secondAddress" id="secondAddress" readonly><br>

전화번호 <input type="text" value="${customer.tel}" name="tel" readonly><br>
팩스번호 <input type="text" value="${customer.fax}" name="fax" readonly><br>
홈페이지 <input type="text" value="${customer.homepage}" name="homepage" readonly><br>

법인여부 <input type="radio" value="Y" name="corporationWhether" <c:out value="${customer.corporationWhether == 'Y' ? 'checked' : ''}"/>>법인
<input type="radio" value="N" name="corporationWhether" <c:out value="${customer.corporationWhether == 'N' ? 'checked' : ''}"/>>개인<br>

해외여부 <input type="radio" value="Y" name="foreignWhether" <c:out value="${customer.foreignWhether == 'Y' ? 'checked' : ''}"/>>국내
<input type="radio" value="N" name="foreignWhether" <c:out value="${customer.foreignWhether == 'N' ? 'checked' : ''}"/>>해외<br>
          
과세구분 <select name="taxWhether"><option value="Y" <c:out value="${customer.taxWhether == 'Y' ? 'selected' : ''}"/>>과세/면세</option>
              <option value="N" <c:out value="${customer.taxWhether == 'N' ? 'selected' : ''}"/>>비과세</option>
          </select><br>

          
국가 <input type="text" value="${nation.nationS}" name="nationS" readonly>
     <select name="nation"><option <c:out value="${nation.nation == '대한민국' ? 'selected' : ''}"/>>대한민국</option>
         <option <c:out value="${nation.nation == '중국' ? 'selected' : ''}"/>>중국</option>
         <option <c:out value="${nation.nation == '일본' ? 'selected' : ''}"/>>일본</option>
         <option <c:out value="${nation.nation == '미국' ? 'selected' : ''}"/>>미국</option>
         <option <c:out value="${nation.nation == '필리핀' ? 'selected' : ''}"/>>필리핀</option>
         <option <c:out value="${nation.nation == '영국' ? 'selected' : ''}"/>>영국</option>
     </select>
<button>검색</button><br>

특수관계자 <input type="checkbox" name="specialRelation" value="${customer.specialRelation}" <c:out value="${customer.specialRelation == 'Y' ? 'checked' : 'N'}"/>><br>
거래중지 <input type="checkbox" name="tradeStop" value="${customer.tradeStop}" <c:out value="${customer.tradeStop == 'Y' ? 'checked' : 'N'}"/>><br>

<c:set var="contractStart"><fmt:formatDate value="${customer.contractStart}" pattern="yyyy-MM-dd"/></c:set>
<c:set var="contractEnd"><fmt:formatDate value="${customer.contractEnd}" pattern="yyyy-MM-dd"/></c:set>

<label for="start">계약기간 </label>
<input type="date" id="contractStart" name="contractStart"
       value="${contractStart}"
       min="2001-01-01" max="2100-01-01" readonly>
       
<label for="end">~ </label>
<input type="date" id="contractEnd" name="contractEnd"
       value="${contractEnd}"
       min="2001-01-01" max="2100-01-01" readonly><br>
       
<c:set var="registrationDate"><fmt:formatDate value="${customer.registrationDate}" pattern="yyyy-MM-dd HH:mm:ss" /></c:set>
<c:set var="modificationDate"><fmt:formatDate value="${customer.modificationDate}" pattern="yyyy-MM-dd HH:mm:ss" /></c:set>
<!-- 시분초 안넘어옴 -->
등록정보 <input type="text" value="${customer.registrationMan}" name="registrationMan">
<input type="text" name="registrationDate" value="${registrationDate}" readonly><br>

<!-- 변경일 넘기기로 바꾸기 -->
변경정보 <input type="text" value="${customer.modificationMan}" name="modificationMan">
<input type="text" name="modificationDate" value="${modificationDate}" readonly><br>

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
  <td><input type="text" value="${account.factory}" name="factory" readonly><br></td>
  <td><input type="text" value="${account.tradeBank}" name="tradeBank" readonly><br></td>
  <td><input type="text" value="${account.accountNo}" name="accountNo" readonly><br></td>
</tr>
</tbody>
</table>

</form>
</c:if>
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

</html>







