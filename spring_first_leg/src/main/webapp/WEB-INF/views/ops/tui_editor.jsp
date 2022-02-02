<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>tui</title>
		<script src="resources/script_ghd.js"></script>
		<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css"/>
        <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
	</head>
	<body>
		<h1>welcome!</h1>
		<h2>tui test file</h2>
		<hr>
		
		<div>
			<div id="editorSection"></div>
			<div id="form-submit">OK</div>
		</div>
		<div id="editor"></div>
        <script>
            const Editor = toastui.Editor;
            const editor = new Editor({
                el: document.querySelector('#editor'),
                height: '500px',
                initialEditType: 'markdown',
                previewStyle: 'vertical' });
            editor.getMarkdown();
        </script>
		
	</body>
</html>