package com.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginADao;


@WebServlet("/Login")
public class Login extends HttpServlet {
	
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eid=request.getParameter("eid");
		String pass=request.getParameter("pass");
		
		
		LoginADao dao= new LoginADao();
			if(dao.check(eid, pass))
			{
				
				HttpSession session=  request.getSession();
				session.setAttribute("employee_id", eid);
				
				
				
				response.sendRedirect("report.jsp");
			}
			else
			{
				
				response.sendRedirect("login.jsp");
			}
		
		
		
	}

	

}
