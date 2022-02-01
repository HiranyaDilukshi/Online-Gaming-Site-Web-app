package com.oop.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oop.model.Subscription;

import com.oop.util.SubscriptionDBUtil;


@WebServlet("/DeleteSubscriptionServlet")
public class DeleteSubscriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sid = request.getParameter("SID");
		
		boolean isTrue;
		SubscriptionDBUtil a=new SubscriptionDBUtil();
		isTrue = a.deleteSubscription(sid);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("store.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Subscription> subDetails = a.getSubscriptionDetails(sid);
			request.setAttribute("subDetails", subDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("subscriptionlibrary.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
