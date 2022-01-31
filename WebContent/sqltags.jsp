<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*, com.mysql.jdbc.Driver"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>  
<title>sql:query Tag</title>  
</head>  
<body>  
   
<!-- sql:setDataSource tag -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/db_world"  
     user="root"  password="root"/>  
 <%-- 
 <!-- sql:update tag to INSERT -->   
 <%-- 
<sql:update dataSource="${db}" var="count">  
INSERT INTO EMPLOYEE VALUES (667,'Virendra', 'sales'); 

</sql:update> 
--%> 
<!-- sql:update with sq:param tag to DELETE -->  
<c:set var="empId" value="1"/>  
	<sql:update dataSource="${db}" var="count">  
		DELETE FROM EMPLOYEE WHERE empId = ?  
	 <sql:param value="${empId}" />  
</sql:update> 
  
  
<!-- sql:query  tag --> 
<sql:query dataSource="${db}" var="rs">  
	SELECT * from EMPLOYEE;  
</sql:query>  
   
   
<table border="2" width="100%">  
<tr>  
<th>Employee ID</th>  
<th>Employee Name</th>  
<th>dept</th>  
  
</tr>  
	<c:forEach var="table" items="${rs.rows}">  
		<tr>  
			<td><c:out value="${table.empId}"/></td>  
			<td><c:out value="${table.name}"/></td>  
			<td><c:out value="${table.dept}"/></td>  
			 
		</tr>  
	</c:forEach>  
</table>  

</body>  
</html>  