package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oop.util.SubscriptionDBUtil;


@WebServlet("/SubscriptionInsert")
public class SubscriptionInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SubscriptionInsert() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String CID = request.getParameter("userid");
		String name= request.getParameter("plan");
		String date = request.getParameter("date");
		Float amount=Float.parseFloat(request.getParameter("amount"));
		
		SubscriptionDBUtil a=new SubscriptionDBUtil();
		boolean isTrue =a.insertsubscription(username,CID,name,date,amount);
		//if data base connection is true and success,all data is insert
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("subscriptionsuccess.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
