<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Yahoo!!</title>
</head>
<body>
<h1>Welcome ${name}</h1>
<div>
Your Todos are
<ol>
<c:forEach items="${todos}" var="todo">
   <li>${todo.name}</li>
</c:forEach>
</ol>
<p><font color="red">${errorMessage}</font></p>
<form method="POST" action="/todo.do">
New Todo : <input name="todo" type="text" /> <input name="add" type="submit" />
</form>
</div>
</body>
</html>