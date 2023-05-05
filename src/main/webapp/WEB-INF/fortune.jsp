<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">
		<h1 class="text-center mb-4">Here's Your Omikuji!</h1>
		<div class="bg-info p-4 text-center text-white">
			<h2>${result}</h2>
		</div>
		<a class="mt-3" href = "/">Return</a>
	</div>
</body>
</html>
