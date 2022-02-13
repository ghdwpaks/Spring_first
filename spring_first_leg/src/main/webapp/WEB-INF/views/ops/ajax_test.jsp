<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>ajax page</title>
		<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css"/>
        <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
	</head>
	<%@include file ="../terminal/header.html" %>
	<body>
		<h1>ajax test page here</h1>
		<h2>welcome! 92</h2>

		<!-- 
		<input type="text" id="name"  placeholder="이름"/><br><br>
		<input type="text" id="gender" placeholder="성별"/><br><br>
		<input type="text" id="age"  placeholder="나이"/><br><br>
		 -->
		
		<input type="button" id="ghd" value="제출" class="btn btn-success"/>
		<br>
		<div id="editor"></div>
		<button type="button" id="submit" class="btn btn-dark">
            <i class="fas fa-success"></i>완료
        </button>
        
        <input type="button" id="ghd" class="btn btn-dark" value="돌아가기"/>
		
	</body>
	
</html>
<script>
	$(document).ready(() => {
		
	    console.log("log1")
	    
		$('#ghd').click(() => {
			alert("얼럿 1 !");
			console.log("log3")
			var sending_data = {name:"ghdwpaks"}
			$.ajax({
			    type:"POST",
			    url:"AajxEditPost",
			    data: "ghdwpaksghdwpaks",
			    contentType: "application/json; charset=utf-8",
			    dataType:"text",
		    	success : function(data){
		    		alert("통신 성공"+data);
		    		window.location = data
	            },
	            error : function(XMLHttpRequest, textStatus, errorThrown){
	                alert("통신 실패.")
	                console.log("XMLHttpRequest :"+XMLHttpRequest)
	                console.log("textStatus :"+textStatus)
	                console.log("errorThrown :"+errorThrown)
	                alert("마침")
	            }
			});
			alert("얼럿 2");
		});
	    
		
	});
</script>