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
		<input type="text" id="name"  placeholder="�̸�"/><br><br>
		<input type="text" id="gender" placeholder="����"/><br><br>
		<input type="text" id="age"  placeholder="����"/><br><br>
		 -->
		
		<input type="button" id="ghd" value="����" class="btn btn-success"/>
		<br>
		<div id="editor"></div>
		<button type="button" id="submit" class="btn btn-dark">
            <i class="fas fa-success"></i>�Ϸ�
        </button>
        
        <input type="button" id="ghd" class="btn btn-dark" value="���ư���"/>
		
	</body>
	
</html>
<script>
	$(document).ready(() => {
		
	    console.log("log1")
	    
		$('#ghd').click(() => {
			alert("�� 1 !");
			console.log("log3")
			var sending_data = {name:"ghdwpaks"}
			$.ajax({
			    type:"POST",
			    url:"AajxEditPost",
			    data: "ghdwpaksghdwpaks",
			    contentType: "application/json; charset=utf-8",
			    dataType:"text",
		    	success : function(data){
		    		alert("��� ����"+data);
		    		window.location = data
	            },
	            error : function(XMLHttpRequest, textStatus, errorThrown){
	                alert("��� ����.")
	                console.log("XMLHttpRequest :"+XMLHttpRequest)
	                console.log("textStatus :"+textStatus)
	                console.log("errorThrown :"+errorThrown)
	                alert("��ħ")
	            }
			});
			alert("�� 2");
		});
	    
		
	});
</script>