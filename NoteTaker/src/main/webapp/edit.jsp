<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="all_js_css.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<div class="container">
	<%@ include file="navbar.jsp"%>

	<body>
		<h1>This is edit page</h1>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>
	</body>
	
	<form action="UpdateServlet" method="post">
	
	<input value="<%= note.getId() %>" name="note_id" type="hidden" />
			<div class="form-group">
			
				<label for="title">Note title</label> <input name="title" required type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter title"
					value="<%= note.getTitle() %>"/>
			</div>
			<div class="form-group">
			
				<label for="content">Content</label>
				<textarea
				name="content"
				 required id="content"
					placeholder="Enter your content here" 
					
					class="form-control"
					style="height: 300px;"
					><%= note.getContent() %></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn blue white">save</button>

			</div>
		</form>
	
	</div>
</html>