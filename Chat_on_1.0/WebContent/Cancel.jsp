<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</style>
<title>Cancel_Booking</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" href="Cust_Home.jsp">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Booking_Cylinder.jsp">Booking</a>
  </li>
</ul>
</nav>
<h1><b><i><u>Cancel Booking Console....</u></i></b></h1>
<form action="/Chat_on_1.0/Booking_Handeller" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Booking id</label>
    <input type="text" class="form-control" name="bid" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter bid">
  </div>
  <input type="hidden" name="del" value="del">
 <button type="submit" class="btn btn-primary">Submit</button>
</form>

</body>
</html>