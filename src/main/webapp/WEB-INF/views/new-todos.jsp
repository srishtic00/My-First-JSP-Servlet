<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>

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