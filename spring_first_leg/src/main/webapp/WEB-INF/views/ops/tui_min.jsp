<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>tui</title>
		<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css"/>
        <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
	</head>
	<%@include file ="../terminal/header.html" %>
	<body>
		<h1>welcome! 19</h1>
		<h2>tui test file</h2>
		<hr>
		
		<div id="editor"></div>
        
		
	</body>
</html>


<script>
	$(document).ready(() => {	
	    const Editor = toastui.Editor;
	    const editor = new Editor({
	        el: document.querySelector('#editor'),
	        height: '500px',
	        initialEditType: 'markdown',
	        previewStyle: 'vertical' });
	    editor.getMarkdown();
		
	})
</script>
