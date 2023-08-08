<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>유저 리스트</h3>
<select name="searchType" id="searchType">
		<option value="1">제목</option>
		<option value="2">생일</option>
		<option value="3">내용</option>
		<option value="4">제목+내용</option>
		<option value="5">생일+내용</option>
		<option value="6">제목+생일</option>
		<option value="7">제목+생일+내용</option>
</select>
<input type="text" name="searchType" placeholder="검색어" id="searchStr">
<button onclick="loadFunc()">검색 </button>
<div class= "container">
	<table class="table table-bordered">
		<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">생일</th>
					<th scope="col">작성일</th>
				</tr>
			</thead>
			<tbody id="tBody">
			</tbody>
			<tr>
				<td colspan="4" align="right">
						<button type="button" class="btn btn-primary" onclick="goPage('/user-info/insert')">등록</button>
				</td>
			</tr>
	</table>
</div>
<script>
	function goPage(url){
		locatuon.href = url;
	}
	const loadFunc = function() {
		const xhr = new XMLHttpRequest();
		const searchStr = document.querySelector('#searchStr');
		const searchType = document.querySelector('#searchType');
		
		let url = '/json/list?';
		if(searchStr.value!==''){
			url += 'searchType=' + searchType.value + '&searchStr=' + searchStr.value;
		}
		xhr.open('GET', url);
		xhr.onreadystatechange = function(){
			if(xhr.readyState===4){
                if(xhr.status===200){
                const list = JSON.parse(xhr.responseText);
                let html = '';
                for(const user of list){
                	html += '<tr>';
                	html += '<td>' + user.uiNum + '</td>';
                    html += '<td><a href="/views/user-info/view?uiNum=' + user.uiNum + '">' + user.uiTitle + '</a></td>';
                    html += '<td>' + user.uiName + '</td>';
                    html += '<td>' + user.credat + '</td>';
                	html += '</tr>';
                	}
                document.querySelector('#tBody').innerHTML = html;
                }
			}
		}
		xhr.send();
	}
	window.addEventListener('load',loadFunc);
</script>


</body>
</html>