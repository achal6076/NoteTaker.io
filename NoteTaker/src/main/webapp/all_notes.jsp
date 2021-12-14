<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="all_js_css.jsp"%>
<meta charset="ISO-8859-1">

<title>all notes</title>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>

		<h1 class="text-uppercase">All notes</h1>
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from Note");
		List<Note> list = q.list();
		for (Note note : list) {
		%>

		<div class="card mt-2" >
			<img class="card-img-top m-4 mx-auto" style="max-width:50px;" src="img/notes.png" alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title"><%= note.getTitle() %> </h5>
				<p class="card-text"><%= note.getContent() %></p>
				<p><b><%= note.getAddedDate() %></b></p>
				
				<div class="container text-center mt-3">
					<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
					<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-success">Edit</a>
				</div>
			</div>
		</div>



		<%
		}
		

		s.close();
		%>
		
	</div>
</body>
</html>