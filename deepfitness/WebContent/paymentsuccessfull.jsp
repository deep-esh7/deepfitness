<jsp:include page="header.jsp"></jsp:include><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
 <%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
    function redirect() {
        window.location = "Index.jsp";
    }
    window.setTimeout("redirect()", 60000);
</script>
<style>
table, td, th {  
  border: 1px solid #ddd;
  text-align: center;
}

table {
  border-collapse: collapse;
  
  font-size: 20px;
  font-weight: bold;
}

th, td {
  padding: 15px;
}
.borderimg { 
  border: 2px solid transparent;
  background: black;}
</style>
 <center class="animatable fadeInRight"><a href=""><img class="borderimg" src="images/banner_1520x90.jpg" /></a></center>

<br><br><br>
<center>
<table width="100%">
<tr><td>

<h1><center>
<font color="green">Congrats! Your Payment Is Successfull! Thank Your For Shopping With Us!</font></h1>
<br><center><a href="./products.jsp" ><font color="blue"><h3>Please Do Check Our Our More Products</h3></font></a></center>
</center><br><br> <center><h2><font color="red">Yo Gonna Redirect Automatically In 60 Sec To Homepage!</font></h2></center>

</td></tr></table></center>
<br><br><br>
<center>


<table width="100%">
<tr><td>

<center>
<h3><font color="red">IMPORTANT NOTE:</font></h3> <h4><font color="darkred">Please Enter Correct Amount As Mentioned<br> With Product & Make The Payment<br> Successfully To Receive Your Order On Time . Please Also Note That If We Receive Less Or <br>More Then As Mentioned Amount We Will Intiate A Refund And Cancel The Order<br> (Refund will be processed 24-72 working hrs).<br> THANK YOU!</font><br><br> <br><br> </h4>

</td></tr></table></center>

  
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://us-cdbr-iron-east-05.cleardb.net/heroku_4dd231616dd25d5?reconnect=true"  
     user="bf9f7203541431"  password="f32bf948"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from products;  
</sql:query>  


<!------ Include the above in your HEAD tag ---------->
<center><a href=""><img class="borderimg" src="images/banner_1520x90.jpg"/></a></center>
<c:forEach var="table" items="">
<div class="container">
    <div class="row"> 
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th class="text-center"></th>
                        <th class="text-center"></th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                           <td class="col-sm-8 col-md-6">
                           <div class="media">
                                 <div class="img-hover-zoom" > <a class="thumbnail pull-left" href="productdetails.jsp?id=" style="margin-top: 50px;"> <img class="media-object" src="" style="width: 346px; height: 316px;"></a></div>
                            <div class="media-body">
                            
                                <h4 class="media-heading" style="margin-top: 110px;margin-left: 15px;"><a href="productdetails.jsp?id="><c:out value=""/></a></h4>
                                <h5 class="media-heading" style="margin-left: 15px;"> by<font color="red"> Brand name</font></h5>
                                <span style="margin-left: 7px;">Status: </span><span class="text-success" ><strong>In</strong></span><span class="text-success" ><strong style="margin-left: 7px;"> Stock</strong></span>
                            </div>
                        </div></td>
                      
                        <td class="col-sm-1 col-md-1 text-center"><strong style="margin-left: 200px;"><br><br><br><br><br><br><br><br><br><br><br><br><br>Price:</strong>
                       <strong ></strong></td>
                        <td class="col-sm-1 col-md-1"><br><br><br><br><br><br><br><br><br><br><br><br>
                        <a href="productdetails.jsp?id="><button type="button" class="btn btn-lg">BUY NOW</button></a> <div class="hye" style="margin-left: 200px;">.</div></td> 
                    </tr></tbody></table>

</div></div></div>





 </c:forEach>




</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>