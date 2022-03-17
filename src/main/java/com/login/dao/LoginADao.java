package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginADao {
	
	String sql="select * from user_details where uname=? and pass=?;";
	String url="jdbc:mysql://localhost:3306/world";
	String username ="root";
	String password="sakshi0308";
	public boolean check(String uname,String pass) {
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","sakshi0308");
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, uname);
        st.setString(2,pass);
        
        ResultSet rs=st.executeQuery();
        
        if(rs.next())
        {
        	return true;
        }
		}catch(Exception e) {
			e.printStackTrace();
		}
		
        
		
		return false;
	}

}
