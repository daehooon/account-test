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
<title>거래처 관리</title>

</head>
<body>

<h1>거래처 관리</h1>
<form action="add" method="post" enctype="multipart/form-data">
사업자번호 <input type="text" name="businessNumber"><br>
거래처명 <input type="text" name="custom"><br>
약칭 <input type="text" name="sshort"><br>
대표자 <input type="text" name="ceo"><br>
담당자 <input type="text" name="chargePerson"><br>
업태 <input type="text" name="businessCondition"><br>
종목 <input type="text" name="item"><br>

우편번호 <input type="text" id="postNumber">
<input type="button" onclick="sample6_execDaumPostcode()" value="검색"><br>
주소 1 <input type="text" id="firstAdress"><br>
주소 2 <input type="text" id="secondAdress"><br>

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
                document.getElementById("firstAdress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("secondAdress").focus();
            }
        }).open();
    }
</script>

전화번호 <input type="text" name="tel"><br>
팩스번호 <input type="text" name="fax"><br>
홈페이지 <input type="text" name="homepage"><br>

법인여부 <input type="radio" name="corporationWhether" value="Y">법인
            <input type="radio" name="corporationWhether" value="N">개인<br>
          
해외여부 <input type="radio" name="foreignWhether" value="Y">국내
            <input type="radio" name="foreignWhether" value="N">해외<br>
          
과세구분 <select name="taxWhether">
            <option value="Y">과세/면세</option>
            <option value="N">비과세</option>
         </select><br>

국가(해외) <input type="text" name="countryEnglish"><br>
국가(국내) <input type="text" name="countryKorean"><br>

특수관계자 <input type="checkbox" name="specialRelation"><br>
거래중지 <input type="checkbox" name="tradeStop"><br>

<label for="start">계약기간 </label>
<input type="date" id="contractStart" name="contractStart"
       value="2001-01-01"
       min="2001-01-01" max="2100-01-01">
       
<label for="end">~ </label>
<input type="date" id="contractEnd" name="contractEnd"
       value="2001-12-31"
       min="2001-01-01" max="2100-01-01"><br>

<c:set var="today" value="<%=new java.util.Date()%>" />
<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd HH:mm:ss" /></c:set>

등록정보 <input type="text" name="registrationMan">
            <input type="text" name="registrationDate" 
            value="<c:out value="${date}" />" readonly><br>

<!-- 변경일 넘기기로 바꾸기, readonly 추가 -->
변경정보 <input type="text" name="modificationMan">
            <input type="text" name="modificationDate"><br>

<input type="submit" value="등록">

</form>
</body>
</html>







