<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

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

<form action="SignUpEmployee" method="post">
		<fieldset>
		    <legend><h1>SignUp Form</h1></legend>
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
			
			<input class="input" type="submit" value="signUp" id="register">
			
		</fieldset>
	</form>

</body>
</html>