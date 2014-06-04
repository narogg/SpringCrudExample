<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file ="/WEB-INF/jsp/includes.jsp"%> 
   
   
 <c:import url="header.jsp"></c:import>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management</title>
</head>
<body>

<h1>Students Data</h1>

<form:form action="student.do" method="POST" commandName="student">
	<table class="table">
		<tr>
			<td>Student ID</td>
			<td><form:input path="studentId"  /></td>
		</tr>
		<tr>
			<td>First name</td>
			<td><form:input path="firstname" /></td>
		</tr>
		<tr>
			<td>Last name</td>
			<td><form:input path="lastname" /></td>
		</tr>
		<tr>
			<td>Year Level</td>
			<td><form:input path="yearLevel" /></td>
		</tr>
		<hr>
		<tr>
			<td colspan="2">
				<input type="submit" class="btn btn-default" name="action" data-toggle="tooltip" rel="tooltip" data-placement="left" value="Add"title="Enter Student data" />
				<input type="submit" class="btn btn-default" name="action" data-toggle="tooltip" rel="tooltip" data-placement="bottom" value="Edit"title="Enter Student Id to edit data" />
				<input type="submit" class="btn btn-default" name="action" data-toggle="tooltip" rel="tooltip" data-placement="bottom" value="Delete"title="Delete Student after entering its ID" />
				<input type="submit" class="btn btn-default" name="action" data-toggle="tooltip" rel="tooltip" data-placement="right" value="Search" title="Enter Student ID for search"/>				
			</td>
		</tr>
	</table>
</form:form>
<br>

<table class="table table-hover">
	<th>ID</th>
	<th>First name</th>
	<th>Last name</th>
	<th>Year level</th>
	<c:forEach items="${studentList}" var="student">
		<tr>
			<td>${student.studentId}</td>
			<td>${student.firstname}</td>
			<td>${student.lastname}</td>
			<td>${student.yearLevel}</td>
		</tr>
	</c:forEach>
</table>

</body>
<c:import url="footer.jsp"></c:import>
</html>