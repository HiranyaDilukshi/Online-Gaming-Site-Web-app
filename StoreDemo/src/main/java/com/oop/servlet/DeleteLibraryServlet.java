package com.oop.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oop.model.Library;
import com.oop.util.LibraryDBUtil;



@WebServlet("/DeleteLibraryServlet")
public class DeleteLibraryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pid = request.getParameter("purchaseid");
		boolean isTrue;
		LibraryDBUtil a=new LibraryDBUtil();
		isTrue=a.deleteLibrary(pid);
		
		
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("store.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Library> libDetails = a.getLibraryDetails(pid);
			request.setAttribute("libDetails", libDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("library.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
