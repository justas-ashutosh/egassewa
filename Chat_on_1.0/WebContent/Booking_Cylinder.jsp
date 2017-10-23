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
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
<style>
body{
  background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPdNimmTX-7D_dBVPqvwJnqE7kJTxa4gPh8hTOPjXb3VBMvp3k);
  background-repeat:repeat;
}
#oneone{
	
	height: 250px;
	width: 350px;
	margin:7px;
	padding5px;
	border: 4px solid black;
	border-radius: 2px;
}
#twotwo{
	background-image: url(data:image/jpeg;base64,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);
  background-repeat:repeat;

}
</style>
<script>
$("#myform").validate({
	rules: {
		pno: {
			required: true,
			maxlength: 10
		},
		badd: {
			required: true,
			minlength: 10,
			maxlength: 100
		}		
	}
	
});
</script>
<title>Book Cylinder@E Gas</title>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
if(session.getAttribute("username")==null)
	response.sendRedirect("Home.html");
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="Home.html">E-Gas Sewa</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Cust_Home.jsp">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Cust_product.jsp">Product</a>
      </li>
    </ul>
  </div>
</nav>
<%if (session.getAttribute("username") != null ) {%>
	<jsp:include page="included pages/logout1.jsp"></jsp:include>
        <%
        }  %>
<br>
<marquee><b><i>Note : Your address Should be the One Present on the Addhar card. Else You Cylinder Will Not be Delivered.</i></b></marquee> 
<div class="container" >
  <h2>Image Gallery For Reference</h2>
  <p>Click on the images to enlarge them.</p>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
         <a href="myimages/999.jpg" target="_blank">
         <img src="myimages/999.jpg" alt="Lights" id="oneone" />
          <div class="caption">
            <p>This is For Domestic Use</p>
          </div>
          </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
      <a href="myimages/77.jpg" target="_blank" />
        <img src="myimages/77.jpg" alt="Nature" id="oneone" >
          <div class="caption">
            <p>This is For Industrial Use</p>
          </div>
          </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
      <a href="myimages/88.jpg" target="_blank">
        <img src="myimages/88.jpg" alt="Fjords" id="oneone" />
          <div class="caption">
            <p>This is For Scientific Use</p>
          </div>
          </a>
        </div>
    </div>
  </div>
</div>
<br>
<div class="container" id="twotwo">
<br>
<form  action="/Chat_on_1.0/Booking_Handeller" method="post">
  <div class="form-group">
    <label for="exampleFormControlInput1">Phone No:</label>
    <input type="text" name="pno" class="form-control"  id="exampleFormControlInput1" placeholder="+919768092336" required="required"> 
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Address:</label>
    <input type="text" name="badd"  class="form-control" id="exampleFormControlInput1" placeholder="196, Masjid Terrace, Reay Road Mumbai-400010" required="required" >
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Select No. of Cylinders</label>
    <select class="form-control"  name="bquat" id="exampleFormControlSelect1" required="required">
      <option>Select Quantity</option>
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Type Of Need</label>
    <select class="form-control" name="need" id="exampleFormControlSelect1" required="required">
      <option>Select One Of the Following</option>
      <option>Industrial Use</option>
      <option>Domestic</option>
      <option>Scientific</option>
      <option>Academic</option>
      <option>Other</option>
    </select>
  </div>
  <input type="hidden" name="buser" value="${sessionScope.username }">
 <input type="hidden" name="in" value="in"> 
<button type="submit" class="btn btn-primary">Submit</button>
<br>
</form>
<br>
</div>
<br>
<footer>
<div class="card-body">
    <a href="Cust_product.jsp" class="card-link">Products</a>
    <a href="comments.jsp" class="card-link">Comments</a>
  </div>
</footer>
</body>
</html>