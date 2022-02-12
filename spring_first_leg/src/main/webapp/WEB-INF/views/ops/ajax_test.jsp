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
		<h2>welcome! 85</h2>

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
	    const Editor = toastui.Editor;
		const editor = new Editor({
            el: document.querySelector('#editor'),
            initialEditType: 'wysiwyg',
            previewStyle: 'vertical',
            height: '800px',
            usageStatistics: false,
            exts: ['colorSyntax'],
            language: 'ko_KR',
            placeholder: '여기에 내용을 입력해주세요.'
        });
	    editor.getMarkdown();
		
	    console.log("log1")
	    console.log("log2")
	    
		$('#ghd').click(() => {
			alert("얼럿 1 !");
			console.log(this.editor.getHtml);
			console.log("log3")
			let content = this.editor.getHtml
			console.log("log4")
			
			alert("content : "+content)
            let data = {
                'content': content
            }
			alert("data : "+data)
			
			$.ajax({
			    type:"POST",
			    url:"ajaxedit_post",
			    data: data,
			    contentType:"application/json",
			    dataType:"json"
			}).done((data)=> {
				alert("얼럿 3 !");
				alert(JSON.stringify(data))
			}).fail((error)=> {
				alert("얼럿 4 !");
				alert("error :"+error);
				alert(JSON.stringify(error));
			})
			
			
			alert("data : "+data);
			alert("얼럿 2");
		});
		
	});
</script>