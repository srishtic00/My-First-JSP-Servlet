<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Todos</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 60px;
	background-color: #f5f5f5;
}
</style>
</head>

<body>

	<nav class="navbar navbar-inverse">

		<a href="/" class="navbar-brand">My Todo App</a>

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="/list-todo.do">Todos</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a class="btn btn-primary" href="/logout.do">Logout</a></li>
		</ul>

	</nav>

	<div class="container">
		<h3>Your New Action Item:</h3>
		<form method="POST" action="/add-todo.do">
		<table class="table">
			<tr><td>Description :</td><td> <input name="todo" type="text" /></td></tr> 
			<tr><td>Category :</td><td> <input name="category" type="text" /></td></tr>
		<table>
			<input class="btn btn-success" name="add"
				type="submit" />
		</form>
	</div>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>