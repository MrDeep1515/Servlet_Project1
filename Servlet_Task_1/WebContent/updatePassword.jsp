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

<form action="UpdatePassword" method="post">
		<fieldset>
		    <legend><h1>Update Password</h1></legend>
		    
			<label>First Name :-</label><br>
			<input class="input" type="text" name="firstname" placeholder="Enter First Name Here"><br><br>
			
			<label>Create New Password :-</label><br>
			<input class="input" type="password" name="password" placeholder="Enter Password Here"><br><br>
		
			<input class="input" type="submit" value="UpdatePassword" id="register">
			
		</fieldset>
	</form>

</body>
</html>