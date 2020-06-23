<html>
<head>
<title>Yahoo!!</title>
</head>
<body>
<%-- 
<%

java.util.Date date=new java.util.Date();
%>
<h1>
	Current Date is <%=date%>
</h1>
//This is problematic we should not use scriplets
--%>
	<p><font color="red">${errorMessage}</font></p>
	<form action="/login.do" method="POST">
		Name : <input name="name" type="text" /> Password : <input name="password" type="password" /> <input type="submit" />
	</form>
</body>
</html>