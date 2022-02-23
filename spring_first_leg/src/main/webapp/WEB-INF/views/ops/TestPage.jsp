<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Sidebar page</title>
	</head>
	<body>
		<div class="container-fluid">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">testPage</a></li>
				<li class="breadcrumb-item active">Overview</li>
			</ol>
			
			<div class="card mb-3">
				<div class="card-header">
					<i class="fas fa-table"></i> testPage-data
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table talbe-bordered" id="dataTalbe" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>id</th>
									<th>user_name</th>
									<th>content</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${testpage} var="testpage">
									<tr>
										<td>${tespage.id}</td>
										<td>${tespage.user_name}</td>
										<td>${tespage.content}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
	