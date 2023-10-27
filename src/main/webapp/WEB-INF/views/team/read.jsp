<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function update(teamno){
	let url = "update";
	url += "?col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	url += "&teamno="+teamno;
	
	location.href = url;
}

function del(num){
	if(confirm("정말 삭제합니까?")){
		let url = "delete/"+num;
		location.href = url;
	}
}

function list(){
	let url = "list";
	url += "?col=${param.col}";
	url += "&word=${param.word}";
	url += "&nowPage=${param.nowPage}";
	
	//alert(url);
	
	location.href = url;
}
</script>
</head>
<body>
<div class="container mt-3">
  <h2>팀원 정보 조회</h2>
  <ul class="list-group">
    <li class="list-group-item">팀&nbsp;&nbsp원&nbsp;&nbsp명 : ${dto.tname}</li>
    <li class="list-group-item">기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;술 : ${dto.skills}</li>
    <li class="list-group-item">전화번호 : ${dto.phone}</li>
    <li class="list-group-item">주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소 : ${dto.address}</li>
    <li class="list-group-item">우편번호 : ${dto.zipcode}</li>
    <li class="list-group-item">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별 : ${dto.gender}</li>
    <li class="list-group-item">등록날짜 : ${dto.rdate}</li>
  </ul>
    <br>
    <button type="button" class="btn btn-dark" onclick="location.href='create'">등록</button>
    <button type="button" class="btn btn-dark" onclick="update('${dto.teamno}')">수정</button>
    <button type="button" class="btn btn-dark" onclick="del('${dto.teamno}')">삭제</button>
    <button type="button" class="btn btn-dark" onclick="list()">목록</button>
  
</div>
</body>
</html>