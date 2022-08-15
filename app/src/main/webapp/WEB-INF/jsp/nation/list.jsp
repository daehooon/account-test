<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>국가 검색</title>

</head>
<body>
<section>

<h1>국가 검색</h1>

<table border='1'>
<tbody>

<tr>
  <td style="text-align: center;"><b>국가 코드</b></td>
  <td style="text-align: center;"><b>국가명</b></td>
</tr>

<c:if test="${not empty nations}">
  <c:forEach items="${nations}" var="n" >
    <tr>
      <td style="text-align: center;">
        <input type="button" value="${n.nationShort}" name="${n.nation}" onclick="setNation1(value, name)">
      </td>
      <td style="text-align: center;">
        <input type="button" value="${n.nation}" name="${n.nationShort}" onclick="setNation2(value, name)">
      </td>
    </tr>
	</c:forEach>
</c:if>

</tbody>
</table>

<br><input type="button" value="초기화" onclick="reset()"><br>
<br><input type="button" value="창닫기" onclick="window.close()">

</section>
</body>

<script>
"use strict"

function setNation1(value, name) {
	opener.document.getElementById("countryEnglish").value = value
	opener.document.getElementById("countryKorean").value = name
	window.close()
}

function setNation2(value, name) {
	opener.document.getElementById("countryKorean").value = value
	opener.document.getElementById("countryEnglish").value = name
	window.close()
}

function reset() {
	opener.document.getElementById("countryEnglish").value = null
	opener.document.getElementById("countryKorean").value = null
	window.close()
}
</script>

</html>