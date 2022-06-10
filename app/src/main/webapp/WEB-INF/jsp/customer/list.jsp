<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>거래처 목록</title>

</head>
<body>
<section>

<h1>거래처 관리</h1>

<form action='list' method='get'>
  <fieldset>
    <legend><button type="button" onclick="location.href='form'">등록</button></legend>
    <label>사업자번호</label>
      <input type='text' name='keyword' value='${param.keyword}'><br>
    <label>거래처명&nbsp;&nbsp;&nbsp;</label>
      <input type='text' name='keyword' value='${param.keyword}'>
    <button>조회</button>
  </fieldset>
</form><br>

<table border='1'>
<tbody>

<tr>
  <td><b>사업자 번호</b></td>
  <td><b>거래처명</b></td>
</tr>

<c:if test="${not empty param.keyword}">
	<c:forEach items="${customers}" var="c" >
	 <c:if test="${param.keyword == c.businessNumber}">
	      <tr>
	        <td style="text-align: center;"><a href="detail?businessNumber=${param.keyword}">${param.keyword}</a></td>
	        <td style="text-align: center;"><a href="detail?businessNumber=${param.keyword}">${param.keyword}</a></td>
	      </tr>
	 </c:if>
	</c:forEach>
</c:if>

<c:if test="${empty param.keyword}">
	<c:forEach items="${customers}" var="c" >
	      <tr>
	        <td style="text-align: center;"><a href="detail?businessNumber=${c.businessNumber}">${c.businessNumber}</a></td>
	        <td style="text-align: center;"><a href="detail?businessNumber=${c.businessNumber}">${c.custom}</a></td>
	      </tr>
	</c:forEach>
</c:if>

</tbody>
</table>

</section>
</body>
</html>