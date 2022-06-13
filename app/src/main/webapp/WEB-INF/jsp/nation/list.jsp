<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>국가 검색</title>

</head>
<body>
<section>

<h1>국가 검색</h1>

<!-- 국가 검색 click to submit으로 개선하기 -->
<b>국가 코드 </b><input size=1 type="text" id="cInputS">
<input type="button" value="입력" onclick="setNationTextS()"><br>
<b>국가명 </b><input type="text" id="cInput">
<input type="button" value="입력" onclick="setNationText()"><br><br>

<table border='1'>
<tbody>

<tr>
  <td style="text-align: center;"><b>국가 코드</b></td>
  <td style="text-align: center;"><b>국가명</b></td>
</tr>

<c:if test="${not empty nations}">
  <c:forEach items="${nations}" var="n" >
    <tr>
      <td style="text-align: center;">${n.nationS}</td>
      <td style="text-align: center;">${n.nation}</td>
    </tr>
	</c:forEach>
</c:if>

</tbody>
</table>

<br>
<input type="button" value="창닫기" onclick="window.close()">

</section>
</body>

<script type="text/javascript">
  function setNationTextS(){
	  opener.document.getElementById("pInputS").value = document.getElementById("cInputS").value
  }
</script>

<script type="text/javascript">
  function setNationText(){
    opener.document.getElementById("pInput").value = document.getElementById("cInput").value
  }
</script>


</html>