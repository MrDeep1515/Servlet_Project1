<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

button{
width:100px;
height:30px;
margin-left: 250px;
}

form{
    width: 25%;
	margin-left: 400px;
}
fieldset{
padding:20px;
}
legend{
text-align:center;
}
.input{
width:100%;
}
#register{
text-align:center;
background-color: lightgrey;
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
		<button><a href="Logout">LogOut</a></button>
	</ul>

<form action="ShowEmployeeById" method="post">
		<fieldset>
		    <legend><h1>Show Employee By Id</h1></legend>
		    
		    <label>ID :-</label><br>
		    <input class="input" type="text" name="id" placeholder="Enter Id Here"><br><br>
		    
			
			<input class="input" type="submit" value="ShowEmployeeById" id="register">
			
		</fieldset>
	</form>

</body>
</html>