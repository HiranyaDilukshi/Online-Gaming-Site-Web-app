package com.oop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oop.model.Subscription;
import com.oop.util.SubscriptionDBUtil;


@WebServlet("/SubscriptionServlet")
public class SubscriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String username= request.getParameter("username"); 
		String CID= request.getParameter("userid"); 
		boolean isTrue;
		SubscriptionDBUtil a=new SubscriptionDBUtil();
		                                    
		
		try {
		
			
			isTrue = a.validate(username,CID);
			                      
			if(isTrue == true){
				
				//if the validation correct data send to library.jsp page create subscription array list object to save the data
				
				List<Subscription> subDetails = a.getSubscription(username,CID);
				request.setAttribute("subDetails", subDetails);
				                      
				//redirect from servlet to navigate page
				RequestDispatcher dis = request.getRequestDispatcher("subscriptionlibrary.jsp");
				dis.forward(request, response);
				
			}else {
				out.println("<script type='text/javascript'>");
				out.println("alert('You have not any subscription plans added yet.Please add a Plan.');");
				out.println("location='subscriptionlogin.jsp'");
				out.println("</script>");
			}
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}












	}


