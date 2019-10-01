<jsp:include page="header.jsp"></jsp:include><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
   

<head>    <style>
 .btn {
  margin: 15px 0;
  background-color: #0099cc;
  color: #fff;
  }
   .btn:hover {
  border: 1px solid #0099cc;
  background-color: #fff !important;
  color: #3366cc;
  font-color: #3366cc; }
   .img-hover-zoom {
  height: 100%; /* [1.1] Set it as per your need */
  overflow: hidden; /* [1.2] Hide the overflowing of child elements */
}   
.img-hover-zoom img {
  transition: transform .5s ease;
}
.borderimg { 
  border: 2px solid transparent;
  background: black;}
/* [3] Finally, transforming the image when container gets hovered */
.img-hover-zoom:hover img {
  transform: scale(1.2);
}</style>
<title>sql:query Tag</title>  
</head>  
<body>  
   
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://us-cdbr-iron-east-05.cleardb.net/heroku_4dd231616dd25d5?reconnect=true"  
     user="bf9f7203541431"  password="f32bf948"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from products;  
</sql:query>  

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<center><a href=""><img class="borderimg" src="images/banner.jpg" width="1520" height="90"/></a></center>
<c:forEach var="table" items="${rs.rows}">
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
                                 <div class="img-hover-zoom" > <a class="thumbnail pull-left" href="productdetails.jsp?id=${table.ProductId}" style="margin-top: 50px;"> <img class="media-object" src="${table.titleimages}" style="width: 346px; height: 316px;"></a></div>
                            <div class="media-body">
                            
                                <h4 class="media-heading" style="margin-top: 110px;margin-left: 15px;"><a href="productdetails.jsp?id=${table.ProductId}"><c:out value="${table.name}"/></a></h4>
                                <h5 class="media-heading" style="margin-left: 15px;"> by<font color="red"> Brand name</font></h5>
                                <span style="margin-left: 7px;">Status: </span><span class="text-success" ><strong>In</strong></span><span class="text-success" ><strong style="margin-left: 7px;"> Stock</strong></span>
                            </div>
                        </div></td>
                      
                        <td class="col-sm-1 col-md-1 text-center"><strong style="margin-left: 200px;"><br><br><br><br><br><br><br><br><br><br><br><br><br>Price:</strong>
                       <strong >${table.price}</strong></td>
                        <td class="col-sm-1 col-md-1"><br><br><br><br><br><br><br><br><br><br><br><br>
                        <a href="productdetails.jsp?id=${table.ProductId}"><button type="button" class="btn btn-lg">BUY NOW</button></a> <div class="hye" style="margin-left: 200px;">.</div></td> 
                    </tr></tbody></table>

</div></div></div>



 </c:forEach>




  
  <script type="text/javascript">// Trigger CSS animations on scroll.
//Detailed explanation can be found at http://www.bram.us/2013/11/20/scroll-animations/

//Looking for a version that also reverses the animation when
//elements scroll below the fold again?
//--> Check https://codepen.io/bramus/pen/vKpjNP

jQuery(function($) {
 
 // Function which adds the 'animated' class to any '.animatable' in view
 var doAnimations = function() {
   
   // Calc current offset and get all animatables
   var offset = $(window).scrollTop() + $(window).height(),
       $animatables = $('.animatable');
   
   // Unbind scroll handler if we have no animatables
   if ($animatables.length == 0) {
     $(window).off('scroll', doAnimations);
   }
   
   // Check all animatables and animate them if necessary
		$animatables.each(function(i) {
      var $animatable = $(this);
			if (($animatable.offset().top + $animatable.height() - 20) < offset) {
       $animatable.removeClass('animatable').addClass('animated');
			}
   });

	};
 
 // Hook doAnimations on scroll, and trigger a scroll
	$(window).on('scroll', doAnimations);
 $(window).trigger('scroll');

});</script>
  
  

  <script src="js/wow.min.js"></script>

</body></html>

<jsp:include page="footer.jsp"></jsp:include>