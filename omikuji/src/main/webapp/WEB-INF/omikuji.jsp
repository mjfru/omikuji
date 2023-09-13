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
<title>Omikuji | Create</title>
</head>
<body>
	<div id="mainPageContainer">
		<h1>Send an Omikuji</h1>
			<form action="/create" method="POST">
				<div>
					<label class="form-label">Pick a Number from 5 to 25:</label><br>
					<input type="number" min="5" max="25" name="years"><br>
				</div>
				<div>
					<label class="form-label">Name a City:</label><br>
					<input type="text" name="city"><br>
				</div>	
				<div>
					<label class="form-label">Enter the Name of a Real Person:</label><br>
					<input type="text" name="person"><br>
				</div>	
				<div>
					<label class="form-label">Enter any Profession / Hobby (-ing form)</label><br>
					<input type="text" name="activity"><br>
				</div>	
				<div>
					<label class="form-label">Enter any Living Thing:</label><br>
					<input type="text" name="thing"><br>
				</div>	
				<div>
					<label class="form-label">Say Something Nice to Someone:</label><br>
					<textarea name="message"></textarea><br>
				</div>	
				<div id="nav">
					<p>Send and Show a Friend!</p>
					<input type="submit" value="Send" class="btn btn-primary"><a href="/" class="btn btn-secondary">Back</a><br>
				</div>				
			</form>
			
		</div>
</body>
</html>