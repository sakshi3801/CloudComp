
<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
    background: #24A19C;  
   
background: #24A19C;  
    font-family: 'Arial';  
}  
.login{  
        width: 400px;  
        overflow: hidden;  
        margin: auto;  
        margin: 10 0 0 430px; 
        margin-top:40px; 
        padding-left:20px;
        background: #006992;  
        border-radius: 15px ;  
        box-shadow: -1px -2px 69px -14px rgba(0,0,0,1);

         align-items:center; 
}  
h1{  
    text-align: center;  
    color: #ffffff;
    padding: 10px; 
    font-size:50px; 
} 
h2{  
    text-align: center;  
    color: #ffffff;
    padding: 10px; 
    font-size:50px; 
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
<%
  		Connection con = null;
  		
try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String sql="SELECT * FROM sakshi_111916041_details";
		con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/world","root","sakshi0308");
		PreparedStatement st=con.prepareStatement(sql);
		String sql1 =  "SELECT * FROM sakshi_111916041_salary";
    	PreparedStatement st1=con.prepareStatement(sql1);
      ResultSet rs1 = st1.executeQuery();
      ResultSet rs=st.executeQuery();
      while(rs.next() && rs1.next()){
      	out.print("Employee Id : "+rs.getString(1)+"| First Name : " +rs.getString(3)+"| Last Name : " +rs.getString(4)+"| DOB : " +rs.getString(5)+"| Contact Number : " +rs.getString(6)+"|Role : "+rs1.getString(2)+"| Monthly Salary : " +rs1.getString(3)+"| Yearly Bonus : " +rs1.getString(4)+"<br>");
      }
      
	}
	catch(Exception e){
	}

  	%>
   
	</form>
  
  </div>
  
  
    <form  action="Logout">
    
    <div style="display: flex">
    
  	<div id="btn"><input id="button" type="submit" value="Update"></div>
  	<div id="btn"><input id="button" type="submit" value="Delete"></div>
  	<div id="btn"><input id="button" type="submit" value="Logout"></div>
  	</div>
    </form>
     

</body>
</html>