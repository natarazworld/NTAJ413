package com.nt.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/controller")
public class MainControllerServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	     HttpSession ses=null;
	     ServletContext sc=null;
	     RequestDispatcher rd=null;
		//create different scopes of attributes
		 //request scope
		req.setAttribute("attr1","val1");
		//session scope
		ses=req.getSession(true);
		ses.setAttribute("attr2","val2");
		// application scope
		sc=getServletContext();
		sc.setAttribute("attr3","val3");
		 
		//forward to dest jsp page
		rd=req.getRequestDispatcher("/el_objects1.jsp");
		rd.forward(req,res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}

}//class
