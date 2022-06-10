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

<form>
  <fieldset>
    <legend><button type="button" onclick="location.href='form'">등록</button></legend>
    <label>사업자번호</label>
      <input type="text" name="businessNumber" value=""/><br>
    <label>거래처명</label>
      <input type="text" name="custom" value=""/>
      <input type="submit" value="조회">
  </fieldset>
</form><br>

<table border='1'>
<tbody>

<tr>
  <td><b>사업자 번호</b></td>
  <td><b>거래처명</b></td>
</tr>
<c:forEach items="${customers}" var="c" >
      <tr>
        <td><a href="detail?businessNumber=${c.businessNumber}">${c.businessNumber}</a></td>
        <td><a href="detail?businessNumber=${c.businessNumber}">${c.custom}</a></td>
      </tr>
</c:forEach>

</tbody>
</table>

</section>
</body>
</html>