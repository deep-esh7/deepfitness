<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://piz5tlqe47copymd:ry5fl3paiph1nnbv@m7nj9dclezfq7ax1.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/vglkqr7c052ybt59/vglkqr7c052ybt59"  
     user="piz5tlqe47copymd"  password="ry5fl3paiph1nnbv"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from hello;  
</sql:query> 

<c:forEach var="table" items="${rs.rows}"> <c:out value"${table.name}"/></c:forEach>