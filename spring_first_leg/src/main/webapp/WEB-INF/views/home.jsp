
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

	<head>
		<title>Home</title>
		<script src="resources/script_ghd.js"></script>
		<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css"/>
        <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
		
		<meta charset="utf-8">
	
	</head>
<%@include file ="./terminal/header.html" %>
	<body>
		<h1>
			Hello world!  10
		</h1>
	
		<P>  The time on the server is ${serverTime}. </P>
		<a href="ops">move to ops</a><br>
		<a href="tui">move to tui</a><br>
		<input type="button" id="tui_min" class="btn btn-info" value="tui min"/><br><br>
		<a href="ajax">move to ajax</a>
		<br>
		<br>
		<form action="">
            choose file : <input type="file"/><br><br>    
            choose img file(multiple) : <input type="file" accept="image/*" multiple/><br><br>
            <input type="search" />
            <input type="submit" value="search"/>
            <input type="reset" value="clear"/>
        </form>
        <br>
        <br>
        <button type="button" class="btn btn-primary">Primary</button>
		<button type="button" class="btn btn-secondary">Secondary</button>
		<button type="button" class="btn btn-success">Success</button>
		<button type="button" class="btn btn-danger">Danger</button>
		<button type="button" class="btn btn-warning">Warning</button>
		<button type="button" class="btn btn-info">Info</button>
		<button type="button" class="btn btn-light">Light</button>
		<button type="button" class="btn btn-dark">Dark</button>
		
		<button type="button" class="btn btn-link">Link</button>
	</body>
</html>
<%@include file ="./terminal/footer.html" %>
<script>
	$("#tui_min").click(function(){
		
		
	    window.location = "tui_min"
	});
</script>