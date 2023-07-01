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
.gender{

		display:inline-block;:
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

<form action="AddEmployee" method="post">
		<fieldset>
		    <legend><h1>Registration Form</h1></legend>
			<label>First Name :-</label><br>
			<input class="input" type="text" name="firstname" placeholder="Enter First Name Here"><br><br>
			
			<label>Last Name :-</label><br>
			<input class="input" type="text" name="lastname" placeholder="Enter Last Name Here"><br><br>
			
			<label>Date Of Birth :-</label><br>
			<input class="input" type="date" name="dob" placeholder="Enter Date Of Birth Here"><br><br>
			
			<label>Gender :-</label>
			<input class="gender" type="radio" name="gender" value="male">Male
			<input class="gender" type="radio" name="gender" value="female">Female
			<input class="gender" type="radio" name="gender" value="other">Other<br><br>
			
			<label>Phone :-</label><br>
			<input class="input" type="tel" name="mobile" placeholder="Enter Mobile No. Here"><br><br>	
			
			<label>Email ID :-</label><br>
			<input class="input" type="email" name="email" placeholder="Enter Email ID Here"><br><br>
			
			<label>Password :-</label><br>
			<input class="input" type="password" name="password" placeholder="Enter Password Here"><br><br>
			
			<label>Blood Group :- </label>
			<select name="bloodGroup">
			  <option value="" disabled="disabled" selected>Select Blood Group</option>
			  <option value="A+">A+</option>
			  <option value="A-">A-</option>
			  <option value="B+">B+</option>
			  <option value="B-">B-</option>
			  <option value="O+">O+</option>
			  <option value="O-">O-</option>
			  <option value="AB+">AB+</option>
			  <option value="AB-">AB-</option>
			</select><br><br>
			
			<label>Address :-</label><br>
			<input class="input" type="text" name="address" placeholder="Enter Address Here"><br><br>
			
			<label>Pincode :-</label><br>
			<input class="input" type="text" name="pincode" placeholder="Enter Pincode Here"><br><br>
			
			<input class="input" type="submit" value="AddEmployee" id="register">
			
		</fieldset>
	</form>

</body>
</html>