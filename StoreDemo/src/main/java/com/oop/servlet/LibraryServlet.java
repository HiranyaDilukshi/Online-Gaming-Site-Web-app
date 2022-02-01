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

import com.oop.model.Library;
import com.oop.util.LibraryDBUtil;



@WebServlet("/LibraryServlet")
public class LibraryServlet extends HttpServlet {
private static final long serialVersionUID = 1L;


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//librarylogin.jsp to servlet
		String CID= request.getParameter("userid"); 
		boolean isTrue;
		LibraryDBUtil a=new LibraryDBUtil();
		                                    
		
		try {
		
			//call the validate method in libraryDBUtil
			isTrue = a.validate(CID);
			                      //customerDBUtil validate parameters
		
			if(isTrue == true){
				
				//if the validation correct data send to account.jsp page so we have to create customer array list object to save the data
				
				List<Library> libDetails = a.getLibrary(CID);
				request.setAttribute("libDetails", libDetails);
				                      //attributename//arrayobject	
				
				//redirect from servlet to navigate page
				RequestDispatcher dis = request.getRequestDispatcher("library.jsp");
				dis.forward(request, response);
				
			}else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your user id is incorrect.You have not purchase any game yet');");
				out.println("location='librarylogin.jsp'");
				out.println("</script>");
			}
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}









