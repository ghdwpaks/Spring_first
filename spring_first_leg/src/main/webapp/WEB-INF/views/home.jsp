
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<%@include file ="./terminal/header.html" %>
	<meta charset="utf-8">

</head>
	<body>
		<h1>
			Hello world!  
		</h1>
	
		<P>  The time on the server is ${serverTime}. </P>
		<a href="ops">move to ops</a>
		<br>
		<br>
		<form action="">
            choose file : <input type="file"/><br><br>    
            choose img file(multiple) : <input type="file" accept="image/*" multiple/><br><br>
            <input type="search" />
            <input type="submit" value="검색"/>
            <input type="reset" value="다시 입력"/>
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