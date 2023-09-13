<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
<title>Omikuji | View</title>
</head>
<body>
	<h1>Here's Your Omikuji!</h1>
	<div class="message">
		<p>In <span><c:out value="${years}"/></span> years, you will live in <span><c:out value="${city}"/></span> 
		with <span><c:out value="${person}"/></span> as your roommate, 
		<span><c:out value="${activity}"/></span> for a living. 
		The next time you see a <span id="luck"><c:out value="${thing}"/></span> you will have good luck.
		Also, <span><c:out value="${message}"/></span></p>
	<a href="/newForm" class="btn btn-secondary" id="homelink">Go Back</a>	
	</div>
</body>
</html>