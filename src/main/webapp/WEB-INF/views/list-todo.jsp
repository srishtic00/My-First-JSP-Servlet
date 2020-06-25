<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>

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
				<a class="btn btn-danger"
					href="/delete-todo.do?todo=${todo.name}&category=${todo.category}">Delete</a>
				</td>
				<tr>
			</c:forEach>
		</table>
<p><font color="red">${errorMessage}</font></p>
		<a class="btn btn-success"
					href="/add-todo.do">Add New Todo</a>
	</div>
</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>