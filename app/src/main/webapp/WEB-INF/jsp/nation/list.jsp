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

</section>
</body>
</html>