package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.util.LibraryDBUtil;


@WebServlet("/ShippingInsert")
public class ShippingInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ShippingInsert() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String CID = request.getParameter("userid");
		int GID = Integer.parseInt(request.getParameter("gameid"));
		String name = request.getParameter("name");
		

		LibraryDBUtil a=new LibraryDBUtil();
		boolean isTrue = a.insertshipping(CID,GID,name);
		//if data base connection is true and success,all data is inserted
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
