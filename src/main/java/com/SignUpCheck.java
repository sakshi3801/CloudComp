package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SignUpCheck {
	String sql="INSERT INTO user_details VALUES(?,?,?,?,?,?)";
	String url="jdbc:mysql://localhost:3306/world";
	String username ="root";
	String password="sakshi0308";
	public boolean check(String eid,String pass,String fname,String lname,String dob,String cnu) {
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","sakshi0308");
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, eid);
        st.setString(2,pass);
        st.setString(3, fname);  
        st.setString(4, lname);
        st.setString(5, dob);
        st.setString(6, cnu);
        int rs=st.executeUpdate();
        if(rs>0)
        {
        	return true;
        }
		}catch(Exception e) {
			e.printStackTrace();
		}
		
        
		
		return false;
	}
}