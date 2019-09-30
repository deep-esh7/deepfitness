<jsp:include page="header.jsp"></jsp:include><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title><sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/deep7"  
     user="root"  password="root"/>  
     
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from products where ProductId='${param.id}';  
</sql:query>  </title>
</head>
<body>

<c:forEach var="table" items="${rs.rows}">  

<style>
table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  
  font-size: 20px;
  font-weight: bold;
}

th, td {
  padding: 15px;
}
</style>
<style>
.loginBtn--google {
  /*font-family: "Roboto", Roboto, arial, sans-serif;*/
  background: #DD4B39;
}
.loginBtn--google:before {
  border-right: #BB3F30 1px solid;
  background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_google.png') 6px 6px no-repeat;
}
.loginBtn--google:hover,
.loginBtn--google:focus {
  background: #E74B37;
}
.loginBtn {
  box-sizing: border-box;
  position: relative;
  /* width: 13em;  - apply for fixed size */
  margin: 0.2em;
  padding: 0 15px 0 46px;
  border: none;
  text-align: left;
  line-height: 34px;
  white-space: nowrap;
  border-radius: 0.2em;
  font-size: 16px;
  color: #FFF;
}
.loginBtn:before {
  content: "";
  box-sizing: border-box;
  position: absolute;
  top: 0;
  left: 0;
  width: 34px;
  height: 100%;
}
.loginBtn:focus {
  outline: none;
}
.loginBtn:active {
  box-shadow: inset 0 0 0 32px rgba(0,0,0,0.1);
}

.divider-text {
    position: relative;
    text-align: center;
    margin-top: 15px;
    margin-bottom: 15px;
}
.divider-text span {
    padding: 7px;
    font-size: 12px;
    position: relative;   
    z-index: 2;
}
.loginBtn--facebook {
  background-color: #4C69BA;
  background-image: linear-gradient(#4C69BA, #3B55A0);
  /*font-family: "Helvetica neue", Helvetica Neue, Helvetica, Arial, sans-serif;*/
  text-shadow: 0 -1px 0 #354C8C;
}
.loginBtn--facebook:before {
  border-right: #364e92 1px solid;
  background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_facebook.png') 6px 6px no-repeat;
}
.loginBtn--facebook:hover,
.loginBtn--facebook:focus {
  background-color: #5B7BD5;
  background-image: linear-gradient(#5B7BD5, #4864B1);
}


.divider-text:after {
    content: "";
    position: absolute;
    width: 100%;
    border-bottom: 1px solid #ddd;
    top: 55%;
    left: 0;
    z-index: 1;
}

.btn-facebook {
    background-color: #405D9D;
    color: #fff;
}
.btn-twitter {
    background-color: #42AEEC;
    color: #fff;
}
.card {
    box-shadow: 10px 0px 40px rgba(0,0,0, .2);
  } 
 .card {
    border: 1px solid blue; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }</style>
  
		<div id="messageDiv" style="display: none;"></div>
	
	<script>
		jQuery(function($) {
			$("input[type='submit']").click(function(e) {
				e.preventDefault();
				
				var name = $("input[name='name']").val();
				var email = $("input[name='email']").val();
				var address = $("input[name='address']").val();
				var city = $("input[name='city']").val();
				var state = $("input[name='state']").val();
				var pincode = $("input[name='pincode']").val();
				var mobile = $("input[name='mobile']").val();
				var productid = $("input[name='productid']").val();
				var productname = $("input[name='productname']").val();
				var productprice = $("input[name='productprice']").val();

				var data = {
					name : name,
					email : email,
					address : address,
					city : city,	
				    state : state,
					pincode : pincode,
					mobile : mobile,
					productid : productid,	
					productname : productname,
					productprice : productprice,
				}
				$.ajax({
					type : "POST",
					url : "./order",
					data : data,
				}).done(function(data) {
					alert(data);
					window.location = './ordersuccess.jsp?id=${table.ProductId}';
				}).fail(function(jqXHR, textStatus) {
					alert(textStatus);
				});
			});
		});

		//function to display message to the user
		function showMessage(results) {
			if (results == 'Your Order Is Placed Please Make The Payment To Confirm It!') {
				$('#messageDiv')
						.html(
								"<font color='green'>Your Order Is Placed Please Make The Payment To Confirm It! </font>")
			} else if (results == 'FAILURE') {
				$('#messageDiv')
						.html(
								"<font color='red'>Sorry Your Order Is Not Placed </font>")
			}
		}
	</script>

<center>
<table>


 <div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">

	<tr><br><br><br><br>
<img src="${table.titleimages}"/><br>

   <br><b>ProductId: <c:out value=" ${table.ProductId}"/><br>
Product Name: <c:out value=" ${table.name}"/><br>
 Product Price: <c:out value=" ${table.price}"/></b> <br><br><font color="red">Please Enter Your Delivery Details!</font> <br><br></tr>

	
	<form action="order" method="post">
	<div id="messageDiv" style="display: none;"></div>
 <label for="productid"><b></b></label>
    <input type="hidden" placeholder="" value="<c:out value=" ${table.ProductId}"/>" name="productid" required>
 <label for="productname"><b></b></label>
    <input type="hidden" placeholder="" value="<c:out value=" ${table.name}"/>" name="productname" required>
 <label for="productprice"><b></b></label>
    <input type="hidden" placeholder="" value="<c:out value=" ${table.price}"/>" name="productprice" required>

	 <label for="name"><b>Name:</b></label>
    <input type="text" placeholder="Enter Name" style="margin-left: 29px;" size="70"name="name" required><br>
<br>
    <label for="email"><b>Email ID:</b></label>
    <input type="email"  size="70" placeholder="Email" style="margin-left: 12px;" name="email" required>
    <br>
<br>
    <label for="address"><b>Address:</b></label>
    <input type="text"  size="70" placeholder="Address" style="margin-left: 15px;" name="address" required><br>
  <br>
  <label for="city"><b>City:</b></label>
    <input type="text"  size="70" placeholder="City" style="margin-left: 47px;" name="city" required><br>
 <br>
 <label for="state"><b>State:</b></label>
    <input type="text"  size="70" placeholder="Address" style="margin-left: 38px;" name="state" required><br>
<br>
 <label for="state"><b>Pincode:</b></label>
    <input type="text"  size="70" placeholder="Pincode" style="margin-left: 12px;" name="pincode" required><br>

 <br>
  <label for="mobile"><b>Mobile No:</b></label>
    <input type="text"  size="70" placeholder="Mobile No." style="margin-right: 5px;" name="mobile" required><br>
<br> <input type="submit" class="btn btn-success btn-lg">
   <br><br> <br><br><br> <br><hr>                                                           
</form>

</div>
<h3><font color="red">IMPORTANT NOTE:</font></h3> <h4><font color="darkred">Please Enter Correct Details & Make The Payment Successfully To Receive Your Order On Time . Please Also Note That If We Found Lack Of Information To Disspatch Your Order Or Incorrect Details . We Will Initiate A Refund Or Cancel Your Order! THANK YOU!</font></h4>
</table></center> </article>


</c:forEach>
<html>
  <head>
   
  </body>
</html><jsp:include page="footer.jsp"></jsp:include>