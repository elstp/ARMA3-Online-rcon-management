<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<%
String SE1 = (String)request.getSession().getAttribute("Commandreply");
String SE2 = (String)request.getSession().getAttribute("log");
String SE3= (String)request.getSession().getAttribute("error");
String SE4 = (String)request.getSession().getAttribute("admin");
%>
<p><%=SE1 %></p>
<br />
<p><%=SE2 %></p>
<br />
<p><%=SE3 %></p>
<br />
<p><%=SE4 %></p>
</body>
</html>