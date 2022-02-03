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
	<%@include file ="../terminal/header.html" %>
	<body>
		<h1>welcome! 13</h1>
		<h2>tui test file</h2>
		<hr>
		
		<div id="editor"></div>
		<button type="button" id="submit" class="btn btn-dark">
            <i class="fas fa-success"></i>�Ϸ�
        </button>
        
        <input type="button" id="ghd" class="btn btn-dark" value="���ư���"/>
        
		
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
	
		$("#ghd").click(function(){
			
			alert("������������ ���ư��� ��ư�� �����̽��ϴ�!")
			$.ajax({ type: "GET",
				url: "/myapp" });

		});
		$('#submit').click(function(){
			alert("submit �����")
            let content = editor.getHtml()
			alert("1 content :",content)
			
            let data = {
                'content': content
            }
            alert("2 content :",content)

            // server �� data �� POST �ϴ� �۾�
            $.ajax({
                method: 'POST',
                url: '/tui_edit',
                data: JSON.stringify(data),
                contentType: "application/json",
                dataType: "json"
            }).done((data) => {
                // ���� ��, about �������� �����̷�Ʈ.
                window.location = "/tui_edit"
            }).fail((error)=> {
                // ���� ��, �˸�â ���.
                alert("�۾� �� ������ �߻��߽��ϴ�.")
            })
        })
		
	})
</script>
