<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/JavaScript">
function checkIn(f){
    if (f.tname.value == ""){
        alert("팀원명을 입력하세요");
        f.tname.focus()
        return false;
    }
    if (f.phone.value == ""){
        alert("전화번호를 입력하세요");
        f.phone.focus()
        return false;
    }
    if(f.address.value == ""){
        alert("주소를 입력하세요");
        f.address.focus()
        return false;
    }
    if(f.zipcode.value == ""){
        alert("우편번호를 입력하세요");
        f.zipcode.focus()
        return false;
    }
    if(f.zipcode.value == ""){
        alert("우편번호를 입력하세요");
        f.zipcode.focus()
        return false;
    }
     
}
</script>

</head>
<body>
<div class="container mt-3">
  <h2>팀원 정보 수정</h2>
  <form action="update" method="post" onsubmit="return checkIn(this)">
  	<input type="hidden" name="teamno" value="${dto.teamno }">
  	<input type="hidden" name="col" value="${param.col }">
  	<input type="hidden" name="word" value="${param.word }">
  	<input type="hidden" name="nowPage" value="${param.nowPage }">
    <div class="mb-3 mt-3">
      <label for="wname">팀원명:</label>
      <input type="text" class="form-control" id="tname" value="${dto.tname}" name="tname">
    </div>
    <%-- <div class="mb-3 mt-3">
	    기술&nbsp;&nbsp;
    	<input type="checkbox" class="form-check-input" id="check1" name="skills" value="java" <c:if test="${dto.skills.contains('java')}">checked</c:if>>
     	<label class="form-check-label" for="check1">java</label>
     	
      	<input type="checkbox" class="form-check-input" id="check2" name="skills" value="jsp" <c:if test="${dto.skills.contains('jsp')}">checked</c:if>>
      	<label class="form-check-label" for="check2">jsp</label>
      	
      	<input type="checkbox" class="form-check-input" id="check3" name="skills" value="spring" <c:if test="${dto.skills.contains('spring')}">checked</c:if>>
      	<label class="form-check-label" for="check3">spring</label>
	</div> --%>
	<div class="mb-3 mt-3">
      <label for="skills">기술:</label> 
      <input type="checkbox" id="javascript" name="skills" value="javascript" /> javascript          
   	  <input type="checkbox" id="java" name="skills" value="java" /> java 
      <input type="checkbox" id="jsp" name="skills" value="jsp" /> jsp 
      <input type="checkbox" id="spring" name="skills" value="spring" /> spring
      <c:forTokens var="list" items="${dto.skills}" delims=",">
      	<script>
      		document.getElementById('${list}').checked = true;
      	</script>
      </c:forTokens>   
    </div>
    <div class="mb-3 mt-3">
      <label for="phone">전화번호:</label>
      <input type="text" class="form-control" id="phone" value="${dto.phone}" name="phone">
    </div>
    <div class="mb-3 mt-3">
	    <label for="address">주소</label> 
	    <input type="text" class="form-control" id="address" value="${dto.address}" name="address">
	</div>
	<div class="mb-3 mt-3">
	    <label for="zipcode">우편번호</label> 
	    <input type="text" class="form-control" id="zipcode" value="${dto.zipcode}" name="zipcode">
	</div>
	<div class="mb-3 mt-3">
	    성별&nbsp;&nbsp;
	    <input type="radio" class="form-check-input" id="gender1" name="gender" value="여" <c:if test="${dto.gender.contains('여')}">checked</c:if>>
		<label class="form-check-label" for="gender1" >여</label>
			
		<input type="radio" class="form-check-input" id="gender2" name="gender" value="남" <c:if test="${dto.gender.contains('남')}">checked</c:if>>
		<label class="form-check-label" for="gender2" >남</label>
	</div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</body>
</html>