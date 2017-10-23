<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="Test_Register.Connection_Dao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<style>
body{
  background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPdNimmTX-7D_dBVPqvwJnqE7kJTxa4gPh8hTOPjXb3VBMvp3k);
  background-repeat:repeat;
}
#one{

	position:static;
	marin:10px;
	padding: 10px;
}
</style>
<title>View Booking@E gas</title>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
if(session.getAttribute("username")==null)
	response.sendRedirect("Home.html");
%>     
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="Home.html">E Gas Sewa</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="Cust_Home.jsp">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Booking_Cylinder.jsp">Book Cylinder</a>
      </li>
  </div>
</nav>
<%if (session.getAttribute("username") != null ) {%>
	<jsp:include page="included pages/logout1.jsp"></jsp:include>
        <%
        }  %>
<br>
<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/test1" user="root" password="ashutosh"/>
<sql:query var="list_comments" dataSource="${myDS}">
    select * from booking where buser='${sessionScope.username}';
</sql:query>

<div class="fluid container">
  <h1><u><i>Booking E-Gas Reloaded</i></u></h1>
  <p>We Highly Suggest Digital Payments as we support the Vision of Digital India. </p>
  <table class="table">
    <thead>
      <tr>
        <th>Booking id</th>
        <th>Booking User</th>
        <th>Phone no</th>
        <th>Booking address</th>
        <th>Booking Quantity</th>
        <th>Type of need</th>
        <th>Booking Price</th>
        <th>Booking Date</th>
      </tr>
     <c:forEach var="Com" items="${list_comments.rows}">
      <tr>
        <th><c:out value="${Com.bid}" /></th>
        <th><c:out value="${Com.buser}" /></th>
        <th><c:out value="${Com.pno}" /></th>
        <th><c:out value="${Com.badd}" /></th>
        <th><c:out value="${Com.bquat}" /></th>
        <th><c:out value="${Com.bneed}" /></th>
        <th>Rs. <c:out value="${Com.bprice}" /></th>
        <th><c:out value="${Com.bdate}" /></th>
      </tr>
      </c:forEach>
    </thead>
  </table>
</div>


  	<br>
	<br>
</body>
</html>