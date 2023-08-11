<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>이름</td>
			<td>번호</td>
			<td>나이</td>
			<td>주소</td>
			<td>이름+주소</td>
		</tr>
		<tbody id="tBody"></tbody>
	</table>
	<script>
function getList(){
	const xhr = new XMLHttpRequest();
	xhr.open('GET','/list');
	xhr.onreadystatechange = function(){
		if(xhr.readyState===4){
			if(xhr.status===200){
				const list = JSON.parse(xhr.responseText);
				let html = '';
				for(const map of list){
					html += '<tr>';
					html += '<td>' + map.name +'</td>'
					html += '<td>' + map.num +'</td>'
					html += '<td>' + map.age +'</td>'
					html += '<td>' + map.address +'</td>'
					html += '<td>' + map.name + '+'+ map.address +'</td>'
					html += '</tr>';
				}
				document.querySelector('#tBody').innerHTML = html;
				console.log(html);
			}
		}
	}
	xhr.send();
}
	window.addEventListener('load', getList);

</script>

</body>
</html>