<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Challenge List</title>
</head>
<body>
<form:form>
<table align="center" width="100%" border="0">
         <tr><td>Title:- ${AddChallenge.title}<td></tr>
<tr><td>Challenge Name:- ${AddChallenge.challengeCondition}</td></tr> 
    <tr><td>Technology:- ${AddChallenge.technology}</td></tr>
         <tr><td>Price:- ${AddChallenge.price}</td></tr> 
   <tr><td>Description:- ${AddChallenge.discription}</td></tr> 
     <tr><td> Duration:- ${AddChallenge.duration}</td></tr> 
     </table>
 </form:form>

</body>
</html>