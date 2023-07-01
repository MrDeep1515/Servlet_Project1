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
	margin-left: 500px;
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
#login{
text-align:center;
background-color: lightgrey;
}

#msg{
text-align: center;
color: red;
}

h5{
text-align: center;
}

</style>

</head>
<body>

<h1 id="msg">${error}</h1>

<form action="LoginEmployee" method="post">
		<fieldset>
		    <legend><h1>Login Form</h1></legend>
		    
			<label>First Name :-</label><br>
			<input class="input" type="text" name="firstname" placeholder="Enter First Name Here"><br><br>
			
			<label>Password :-</label><br>
			<input class="input" type="password" name="password" placeholder="Enter Password Here"><br><br>
			
			<input class="input" type="submit" value="Login" id="login"><br><br>
			
			<h5><a href="updatePassword.jsp">Forgot Password</a></h5>
			
			<h5>Don't have an account? <a href="signUp.jsp">Sign Up</a> </h5>
			
		</fieldset>
	</form>

</body>
</html>