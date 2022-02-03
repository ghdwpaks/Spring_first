<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>ajax page</title>
	</head>
	<%@include file ="../terminal/header.html" %>
	<body>
		<h1>ajax test page here</h1>
		<h2>welcome! 34</h2>
		
		<input type="text" id="name"  placeholder="ÀÌ¸§"/><br><br>
		<input type="text" id="gender" placeholder="¼ºº°"/><br><br>
		<input type="text" id="age"  placeholder="³ªÀÌ"/><br><br>
		<input type="button" id="ghd" value="Á¦Ãâ" class="btn btn-success"/>
		
		
	</body>
	
</html>
<script>
	$(document).ready(() => {
		
		$('#ghd').click(function(){
			alert("¾ó·µ 1 !");
			var params = {
					name : "ghdwp",
					gender : "male",
					age : "19"
			}
			
			
			$.ajax({
			    type:"POST",
			    url:"ajaxedit",
			    data:JSON.stringify(params),
			    dataType:'json',
			    contentType:"application/json; UTF-8;",
			    success : function(data){
			    	alert("¾ó·µ 3 !");
			        alert(JSON.stringify(data))
			    },error : function(error){
			        alert("¾ó·µ4");
			       	alert("error :"+error);
			       	alert(JSON.stringify(error));
			    }
			})
			
			
			alert("params : "+params);
			alert("¾ó·µ 2");
		});
		
	});
</script>