<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

<style>
	    
    body  
{  
    margin: 0;  
    padding: 0;  
    background-color: #C8F2EF;  
    font-family: 'Arial';
    color: #fff;  
}  
.login{  
        width: 382px;  
        overflow: hidden;  
        margin: auto;  
        margin: 20 0 0 450px;  
        padding: 80px;  
        background: #24A19C;  
        border-radius: 18px ;  
          
}  
h2{  
    text-align: center;  
    color: #277582;  
    padding: 20px;  
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
</head>
<body>

<h2>Login Page</h2><br>

<div class="login">
	<form  action="Login" method="post">
	
	
	<div style="padding:15px">Enter Employee ID : <input type="text" name="eid" id="Uname"><br></div>
     <div style="padding:15px">Enter Password : <input type="password" name="pass" id="Pass"><br></div>
     
     <div class="main">
     <div id="btn"><input id="button" type="submit" value="Login"></div>
   </form>
   
 
   <form action="Signup" method="post">
   	<div id="btn"><input id="button" type="submit" value="Signup"></div>
   	</div>
   	</div>
   </form>
</body>
</body>
</html>