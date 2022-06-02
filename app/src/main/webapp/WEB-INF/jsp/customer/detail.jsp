<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>거래처 정보</title>
</head>
<body>
 
<c:if test="${not empty customer}">

<!-- 
  <p><a href='?no=${customer.businessNumber}'>초기화</a></p>
  <p><a href='?no=${customer.businessNumber}'>등록</a></p>
   
  <p><a href='updateForm?no=${customer.businessNumber}'>수정</a></p>
  <p><a href='delete?no=${customer.businessNumber}'>삭제</a></p>
  -->
  <fmt:formatDate value="${customer.registrationDate}" pattern="yyyy-MM-dd hh:mm:ss" var="registrationDate"/>
  <fmt:formatDate value="${customer.modificationDate}" pattern="yyyy-MM-dd hh:mm:ss" var="modificationDate"/>
  

  <table border='1'>
    <tbody>
      <tr><th>사업자번호</th> <td>${customer.businessNumber}</td></tr>
      <tr><th>거래처명</th> <td>${customer.custom}</td></tr>
      <tr><th>약칭</th> <td>${customer.sshort}</td></tr>
      <tr><th>대표자</th> <td>${customer.ceo}</td></tr>
      <tr><th>담당자</th> <td>${customer.chargePerson}</td></tr>
      <tr><th>업태</th> <td>${customer.businessCondition}</td></tr>
      <tr><th>종목</th> <td>${customer.item}</td></tr>
      <tr><th>우편번호</th> <td>${customer.postNumber}</td></tr>
      <tr><th>주소1</th> <td>${customer.firstAddress}</td></tr>
      <tr><th>주소2</th> <td>${customer.secondAddress}</td></tr>
      <tr><th>전화번호</th> <td>${customer.tel}</td></tr>
      <tr><th>팩스번호</th> <td>${customer.fax}</td></tr>
      <tr><th>홈페이지</th> <td>${customer.homepage}</td></tr>
      <tr><th>법인여부</th> <td>${customer.corporationWhether}</td></tr>
      <tr><th>해외여부</th> <td>${customer.foreignWhether}</td></tr>
      <tr><th>과세구분</th> <td>${customer.taxWhether}</td></tr>
      <tr><th>국가 영문</th> <td>${customer.countryEnglish}</td></tr>
      <tr><th>국가 한글</th> <td>${customer.countryKorean}</td></tr>
      <tr><th>특수관계자</th> <td>${customer.specialRelation}</td></tr>
      <tr><th>거래중지</th> <td>${customer.tradeStop}</td></tr>
      <tr><th>계약기간(시작)</th> <td>${customer.contractStart}</td></tr>
      <tr><th>계약기간(끝)</th> <td>${customer.contractEnd}</td></tr>
      <tr><th>등록정보(등록인)</th> <td>${customer.registrationMan}</td></tr>
      <tr><th>등록정보(등록날짜)</th> <td>${customer.registrationDate}</td></tr>
      <tr><th>변경정보(변경인)</th> <td>${customer.modificationMan}</td></tr>
      <tr><th>변경정보(변경날짜)</th> <td>${customer.modificationDate}</td></tr>
    </tbody>
  </table>
<!--   
  <form action="applAdd" method="post">
		<input type="hidden" name="scheNo" value="${learning.schedules[0].no}">
		<input type="hidden" name="lno" value="${learning.schedules[0].learningNo}">
  <table border="1">
    <tbody>
      <tr><th>가격</th> <td>${learning.price}</td></tr>
      
      <tr><th>체험날짜</th> <td>${learningDate}</td></tr>
      
      <tr><th>시작시간</th> <td>${startTime}</td></tr>
      
      <tr><th>종료시간</th> <td>${endTime}</td></tr>
      
      <tr><th>선택</th> <td><input type="checkbox"></td></tr>
         
      <tr><th>최소인원</th> <td>${learning.minPeople}</td></tr>
      <tr><th>최대인원</th> <td>${learning.maxPeople}</td></tr>
      <tr><th>신청인원</th> <td><input type="number" name="applySize"></td></tr>
      <tr><th>신청하기!</th> <td><input type="submit" value="신청"></td></tr>
    </tbody>
  </table>
  </form>
 -->
</c:if>
 
 <!-- 
<c:if test="${empty businessNumber}">
  <p>해당 번호의 거래처가 없습니다.</p>
</c:if>
 -->

</body>
</html>