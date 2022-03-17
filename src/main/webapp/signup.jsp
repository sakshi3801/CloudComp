<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
</head>
<style>
	html{
	padding:0;
	margin:0;
	 height:100%;
	}    
	    
    body  
{   
    padding: 0;  
    background: #C8F2EF;
   
background: #C8F2EF;
    font-family: 'Arial';  
}  
.login{  
        width: 400px;  
        overflow: hidden;  
        margin: auto;  
        margin: 10 0 0 300px; 
        margin-top:20px; 
        padding-left:20px;
        background: #24A19C;  
        border-radius: 15px ;  


          
}  
h2{  
    text-align: center;  
    color: #277582;  
    padding: 5px;  
}  
label{  
    color: #08ffd1;  
    font-size: 17px;  
}  
#Uname{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 15px;  
    padding-left: 8px;  
    margin-top:8px;
}  
#Pass{  
    width: 300px;  
    height: 30px;  
    border: none;  
    padding-left: 8px; 
    margin-top:8px; 
    border-radius: 15px;
      
}  
#log{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: blue;  
  
  
}  
span{  
    color: white;  
    font-size: 17px;  
}  
a{  
    float: right;  
    background-color: grey;  
}

#button{
	
	border-radius: 25px;
	border: none;
	height: 35px;
	width: 70px;
	cursor: pointer;
	transition: background-color .5s;
	box-shadow: -1px -2px 69px -14px rgba(0,0,0,1);
}
#button:hover {
  background-color: gold;
}
#btn{
padding: 15px;
}

.main{
	
	display: flex;
}
    
</style>
<body>
<h2>SignUp Page</h2><br>
  <div class="login">
	<form action="ssignup" method="post">
	 <div style="padding:15px"><span>Enter Employee ID number:</span>  <input type="text" name="eid" id="Uname"><br></div>
     <div style="padding:15px"><span>Enter Password:</span> <input type="password" name="pass" id="Pass"><br></div>
     <div style="padding:15px"><span>Enter First Name :</span>  <input type="text" name="fname" id="Uname"><br></div>
     <div style="padding:15px"><span>Enter Last Name :</span> <input type="text" name="lname" id="Uname"><br></div>
   <div style="padding:15px"><span>Enter Date of Birth :</span>  <input type="text" name="dob" id="Uname"><br></div>
     <div style="padding:15px"><span>Enter Contact Number :</span> <input type="text" name="cnu" id="Uname"><br></div>
     
      <div class="main">
     <div id="btn"><input id="button" type="submit" value="SignUp"></div>
	</form>
	</div>
</body>
</html>