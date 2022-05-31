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


<!-- 우편번호 <input type="text" name="postNumber"><br> -->
</div>
   <div class="mb-3 row">
    <label for="postNumber" class="col-sm-1 col-form-label">우편번호</label>
    <div class="col-sm-7">
      <input type="text" class="form-control form-control-sm" id="postNumber" name="postNumber">
      <input type="button" onclick="execDaumPostcode()" value="검색">
    </div>
  </div>

  <div class="mb-3 row">
    <label for="firstAddress" class="col-sm-1 col-form-label">주소1</label>
    <div class="col-sm-7">
      <input type="text" class="form-control form-control-sm" id="firstAddress" name="firstAddress">
    </div>
  </div>
  <div class="mb-3 row">
    <label for="secondAddress" class="col-sm-1 col-form-label">주소2</label>
    <div class="col-sm-7">
      <input type="text" class="form-control form-control-sm" id="secondAddress" name="secondAddress">
    </div>
  </div>

<!-- 주소1 <input type="text" name="firstAddress" id="firstAddress"><br>
주소2 <input type="text" name="secondAddress"><br>  -->
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function execDaumPostcode() {
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
            document.getElementById("postNumber").value = data.zonecode;
            document.getElementById("firstAdress").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("secondAddress").focus();
        }
    }).open();
}
</script>
</body>
</html>







