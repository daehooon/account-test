<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
우편번호 <input type="text" name="postNumber"><br>
주소1 <input type="text" name="firstAddress"><br>
주소2 <input type="text" name="secondAddress"><br>
전화번호 <input type="text" name="tel"><br>
팩스번호 <input type="text" name="fax"><br>
홈페이지 <input type="text" name="homepage"><br>
법인여부 <input type="text" name="corporationWhether"><br>
해외여부 <input type="text" name="foreignWhether"><br>
과세구분 <input type="text" name="taxWhether"><br>
국가 <input type="text" name="countryEnglish"><br>
<!-- 국가 <input type="text" name="countryKorean"><br> -->
특수관계자 <input type="text" name="specialRelation"><br>
거래중지 <input type="text" name="tradeShop"><br>
계약기간 <input type="text" name="contractStart"><br>
<!-- 계약기간 <input type="text" name="contractEnd"><br> -->
등록정보(등록인) <input type="text" name="registrationMan"><br>
등록정보(등록날짜) <input type="text" name="registrationDate"><br>
변경정보(변경인) <input type="text" name="modificationMan"><br>
변경정보(변경날짜) <input type="text" name="modificationDate"><br>
<input type="submit" value="등록">
</form>
</body>
</html>







