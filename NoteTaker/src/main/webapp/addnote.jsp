<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CSS -->
<%@ include file="all_js_css.jsp"%>
<meta charset="ISO-8859-1">
<title>addnote</title>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
			
				<label for="title">Note title</label> <input name="title" required type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter title"/>
			</div>
			<div class="form-group">
			
				<label for="content">Content</label>
				<textarea
				name="content"
				 required id="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 300px;"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn blue white">add</button>

			</div>
		</form>

	</div>


</body>
</html>