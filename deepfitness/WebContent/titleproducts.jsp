 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
 <%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  


<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://us-cdbr-iron-east-05.cleardb.net/heroku_4dd231616dd25d5?reconnect=true"  
     user="bf9f7203541431"  password="f32bf948"/>  
     
     
     <sql:query dataSource="${db}" var="rs">  
SELECT * from hello;  
</sql:query>  

<c:forEach var="table" items="${rs.rows}">  

<h1> <c:out value="${table.message}"/></h1>

</c:forEach>