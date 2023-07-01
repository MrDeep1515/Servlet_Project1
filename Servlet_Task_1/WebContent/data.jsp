<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

ul {
	list-style-type: none;
	padding: 20px;
	border-bottom: 2px solid;
}

.list {
	display: inline;
	margin-left: 20px;
	padding: 10px;
	border-bottom: 2px solid lightblue;
	border-top: 2px solid lightblue;
	border-radius: 20px;
}

a {
	text-decoration: none;
	color: black;
}

#logoutButton{
width:100px;
height:30px;
margin-left: 250px;
}

h1 {
	text-align: center;
}

h2 {
	text-align: center;
}
table{
width: 100%
}

#updatebutton{
width: 100%;
}

#deletebutton{
width: 100%;
}

</style>

</head>
<body>

<ul>
		<li class="list"><a href="Home.jsp">Home</a></li>
		<li class="list"><a href="addEmployee.jsp">Add Employee</a></li>
		<li class="list"><a href="updateEmployee.jsp">Update Employee</a></li>
		<li class="list"><a href="deleteEmployee.jsp">Delete Employee</a></li>
		<li class="list"><a href="showEmployeeById.jsp">Show Employee By Id</a></li>
		<li class="list"><a href="ShowAllEmployees">Show All Employees</a></li>
		<button id="logoutButton"><a href="Logout">LogOut</a></button>
	</ul>

	<h1><u>User Registration Details</u></h1>

	<table border=1>
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Date Of Birth</th>
			<th>Gender</th>
			<th>Mobile</th>
			<th>Email ID</th>
			<th>Password</th>
			<th>Blood Group</th>
			<th>Address</th>
			<th>Pincode</th>
			<th>Action</th>
			<th>Action</th>
		</tr>
			
		<c:forEach var="empData" items="${Data}">
		<tr>
			<td>${empData.id}</td>
			<td>${empData.fname}</td>
			<td>${empData.lname}</td>
			<td>${empData.dob}</td>
			<td>${empData.gender}</td>
			<td>${empData.mobile}</td>
			<td>${empData.email}</td>
			<td>${empData.password}</td>
			<td>${empData.bloodGroup}</td>
			<td>${empData.address}</td>
			<td>${empData.pincode}</td>
			<td><button id="updatebutton"><a href="updateEmployee.jsp">Update</a></button></td>
			<td><button id="deletebutton"><a href="deleteEmployee.jsp">Delete</a></button></td>
		</tr>
		</c:forEach>
		
	</table>

</body>
</html>