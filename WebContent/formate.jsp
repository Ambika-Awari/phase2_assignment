<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body>
<center>
<h2>Marks sheet</h2>
</center>
<!-- fmt:formatDate Tag --> 
<c:set var="Date" value="<%=new java.util.Date()%>" />  
 Date :  
<fmt:formatDate type="date" value="${Date}" />  
</p>  

----------fmt:formatNumber tag -------
<h3>marks</h3>  
 <c:set var="m1" value="94" /> 
 <c:set var="m2" value="40" />
 <c:set var="m3" value="35" />
 <c:set var="m4" value="100" />
 <c:set var="m5" value="100"/>
 
<p> marks-1:  
<fmt:formatNumber type="number"  value="${m1}"/></p>
<p> marks-2:  
<fmt:formatNumber type="number"  value="${m2}"/></p>
<p> marks-3:  
<fmt:formatNumber type="number"  value="${m3}"/></p>
<p> marks-4:  
<fmt:formatNumber type="number"  value="${m4}"/></p>
<p> marks-5:  
<fmt:formatNumber type="number"  value="${m5}"/></p>
</br></br>
<p>total marks 
<fmt:formatNumber type="number" maxIntegerDigits="4" value="${m1+m2+m3+m4+m5}" /></p>
 
<p> percentage  
<fmt:formatNumber type="percent" maxIntegerDigits="5" value="${m1+m2+m3+m4+m5}" /></p>  
<c:set var="s1" value="46000" /> 
 <c:set var="s2" value="40000" />
 <c:set var="s3" value="35000" />
 <c:set var="s4" value="10000" />
 <c:set var="s5"value="10044"/>
<p>Fee paid on sem-1:  
<fmt:formatNumber type="number" groupingUsed="true" value="${m1}"/></p> 
</body>
</html>