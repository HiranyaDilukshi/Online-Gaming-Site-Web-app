package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//login.jsp to servlet
		String username=request.getParameter("uid");
		                                      //loginformname
		String password=request.getParameter("pass");
		
		//servlet to customerDBUtil
		CustomerDBUtil.validate(username,password);
		             //customerDBUtil validate parameters
		
		//if the validation correct data send to account.jsp page so we have to create customer array list object to save the data
		
		
		try {
		List<Customer> cusDetails=CustomerDBUtil.validate(username,password);
		
		request.setAttribute("cusdetails",cusDetails);
		                     //attributename//arrayobject
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//redirect from servlet to navigate page
		
	     RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
	     dis.forward(request,response);
	}

}
