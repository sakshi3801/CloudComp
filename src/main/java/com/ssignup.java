package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.SignUpCheck;

@WebServlet("/ssignup")
public class ssignup extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eid=request.getParameter("eid");
		String pass=request.getParameter("pass");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String dob=request.getParameter("dob");
		String cnu=request.getParameter("cnu");
		
		SignUpCheck dao= new SignUpCheck();
		if(dao.check(eid, pass,fname,lname,dob,cnu))
		{
			
			HttpSession session=  request.getSession();
			session.setAttribute("username", eid);
			session.setAttribute("firstname", fname);
			session.setAttribute("lastname", lname);
			session.setAttribute("DOB", dob);
			session.setAttribute("Email", cnu);
			
			
			response.sendRedirect("report.jsp");
		}
		else
		{
			
			response.sendRedirect("signup.jsp");
		}
	}

}