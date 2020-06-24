<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Yahoo!!</title>
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

.footer .container {
width: auto;
max-width: 680px;
padding: 0 15px;
}
</style>
</head>
<body>
<nav role="navigation" class="navbar navbar-default">

		<div class="">
			<a href="/" class="navbar-brand">My Todo App</a>
		</div>

		<div class="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="/todo.do">Todos</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/logout.do">Logout</a></li>
			</ul>
		</div>

	</nav>
<div class="container">
<h1>Welcome ${name}</h1>

<h3>Your Todos are:</h3>
		<table class="table table-dark">
		<thead class="thead-dark">
    <tr>

      <th>Name</th>
      <th>Category</th>
      <th>Action</th>
    </tr>
  </thead>
			<c:forEach items="${todos}" var="todo">
			<tr>
				<td>${todo.name}</td><td>${todo.category}</td>
				<td>
				<a
					href="/delete-todo.do?todo=${todo.name}&category=${todo.category}">Delete</a>
				</td>
				<tr>
			</c:forEach>
		</table>
<p><font color="red">${errorMessage}</font></p>
		<a
					href="/add-todo.do"><button>Add New Todo</button></a>
	</div>
</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>