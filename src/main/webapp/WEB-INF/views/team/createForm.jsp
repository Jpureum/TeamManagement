<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/JavaScript">
function checkIn(f){
	const cbPart = document.querySelector('.cbPart');
	const checkboxes = cbPart.querySelectorAll('input');
	var cnt = 0;
	
    if (f.tname.value == ""){
        alert("팀원명을 입력하세요");
        f.tname.focus()
        return false;
    }
    
    for(let i = 0; i< checkboxes.length; i++){
    	if(checkboxes[i].checked) {
    		cnt++;
    	}
    }
    if(cnt == 0){
		alert("기술을 선택하세요");
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
	<h3>팀원 정보 생성</h3>
	<form action="create" method="post" onsubmit="return checkIn(this)">
		<div class="mb-3 mt-3">
			<label for="tname">팀원명</label> 
			<input type="text" class="form-control" id="tname" placeholder="Enter tname" name="tname">
		</div>
		<div class="mb-3 mt-3 cbPart">
		    기술&nbsp;&nbsp;
	        <input type="checkbox" class="form-check-input" id="check1" name="skills" value="java">
	        <label class="form-check-label" for="check1">java</label>
	        
	        <input type="checkbox" class="form-check-input" id="check1" name="skills" value="java">
	        <label class="form-check-label" for="check1">javascript</label>
	      
	        <input type="checkbox" class="form-check-input" id="check2" name="skills" value="jsp">
	        <label class="form-check-label" for="check2">jsp</label>
	      
	        <input type="checkbox" class="form-check-input" id="check3" name="skills" value="spring">
	        <label class="form-check-label" for="check3">spring</label>
		</div>
		<div class="mb-3 mt-3">
		    <label for="phone">전화번호</label> 
		    <input type="text" class="form-control" id="phone" placeholder="Enter phone" name="phone">
		</div>
		<div class="mb-3 mt-3">
		    <label for="address">주소</label> 
		    <input type="text" class="form-control" id="address" placeholder="Enter address" name="address">
		</div>
		<div class="mb-3 mt-3">
		    <label for="zipcode">우편번호</label> 
		    <input type="text" class="form-control" id="zipcode" placeholder="Enter zipcode" name="zipcode">
		</div>
		<div class="mb-3 mt-3">
		    성별&nbsp;&nbsp;
			<input type="radio" class="form-check-input" id="gender1" name="gender" value="여" checked>
			<label class="form-check-label" for="gender1">여</label>
				
			<input type="radio" class="form-check-input" id="gender2" name="gender" value="남">
			<label class="form-check-label" for="gender2">남</label>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>
</body>
</html>