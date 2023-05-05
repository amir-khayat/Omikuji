<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container mt-5">
  		<h1 class="text-center mb-4">Send an Omikuji!</h1>
  		<div class="border p-4">
		    <form action="/submitForm" method="post">
			    <div class="form-group mb-4">
			        <label for="number">Select a number between 5 and 25:</label>
			        <select class="form-control" id="number" name="number" required>
			            <option value="">Select a number</option>
			            <c:forEach begin="5" end="25" var="i">
			                <option value="${i}">${i}</option>
			            </c:forEach>
			        </select>
			    </div>
			    <div class="form-group mb-4">
			        <label for="city">Enter the name of any city:</label>
			        <input type="text" class="form-control" id="city" name="city" required>
			    </div>
			    <div class="form-group mb-4">
			        <label for="person">Enter the name of any real person:</label>
			        <input type="text" class="form-control" id="person" name="person" required>
			    </div>
			    <div class="form-group mb-4">
			        <label for="hobby">Enter professional endeavor or hobby:</label>
			        <input type="text" class="form-control" id="hobby" name="hobby" required>
			    </div>
			    <div class="form-group mb-4">
			        <label for="living-thing">Enter any type of living thing:</label>
			        <input type="text" class="form-control" id="living-thing" name="livingThing" required>
			    </div>
			    <div class="form-group mb-4">
			        <label for="message">Say something nice to someone:</label>
			        <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
			    </div>
			    <input type="submit" class="btn btn-primary" value="Send and show a friend!">
			</form>

		</div>
	</div>
	
	
	


	
</body>
</html>