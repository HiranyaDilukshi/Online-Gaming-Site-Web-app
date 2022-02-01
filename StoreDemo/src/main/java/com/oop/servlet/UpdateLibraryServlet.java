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

@WebServlet("/UpdateLibraryServlet")
public class UpdateLibraryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	//forminputtype name
		String pid = request.getParameter("ppid");                              
		String gid = request.getParameter("gid");
		String name = request.getParameter("name");
		String size = request.getParameter("size");
		String status = request.getParameter("status");
		String timeleft =request.getParameter ("timeleft");
		String location = request.getParameter("location");
		String date = request.getParameter("date");
		String description = request.getParameter("description");
		
		
		//create a variable to catch boolean updatecusomer
      boolean isTrue;
      LibraryDBUtil a=new LibraryDBUtil();
		                                       //parameter value
		isTrue = a.updatelibrary(pid,gid,name,size,status,timeleft,location,date,description);
		
		if(isTrue == true) {
			
			List<Library>libDetails = a. getLibraryDetails(pid);
			request.setAttribute("libDetails", libDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("library.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Library> libDetails = a.getLibraryDetails(pid);
			request.setAttribute("libDetails", libDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
