package com.nt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginurl")
public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String uname=null,pwd=null;
	    PrintWriter pw=null;
	    System.out.println(req.getClass()+"                  "+res.getClass());
	    //get PrintWriter 
	    pw=res.getWriter();
	    //set response content type
	    res.setContentType("text/html");
	   //read form data
	     uname=req.getParameter("user").trim();
	     pwd=req.getParameter("pwd").trim();
	     //perform authentication 
	     if(uname.equalsIgnoreCase("raja@gmail.com") && pwd.equalsIgnoreCase("rani")) {
	        pw.println("<h1 style='color:green;text-align:center'>Valid credentails </h1>"); 	 
	     }//if
	     else {
	    	 pw.println("<h1 style='color:red;text-align:center'>InValid credentails </h1>");
	     }
	     
	     //add hyperlink
	     pw.println("<br> <a href='login.html'>home </a>");
	     
	     //close stream
	     pw.close();
				
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}

}
