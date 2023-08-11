<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax-calc</title>
</head>
<body>

<input type="number" name= "num1">
<select name="op">
	<option value="+">더하기</option>
	<option value="-">뺴기</option>
	<option value="*">곱하기</option>
	<option value="/">나누기</option>
	<option value="%">나머지</option>
</select>
<input type="number" name="num2">
<button onclick="calc()">계산</button><br>	
결과 : <span id="result">0</span>
<script>
	function calc(){
		const num1 = document.querySelector('#num1').value,
		const num2 = document.querySelector('#num2').value,
		const op = document.querySelector('#op').value;
		const url = '/calc?num1=' + num1 + '&num2=' + num2 + "&op=" + encodeURIComponent(op);
		const xhr = new XMLHttpRequest();
		xhr.open('GET',url);
		xhr.onreadystatechange = function(){
			if(xhr.readyState === 4){
				if(xhr.status === 200){
					document.querySelector('#result').innerText = xhr.reponseText;
				}
			}
		}
		xhr.send();
	}
</script>
</body>
</html>