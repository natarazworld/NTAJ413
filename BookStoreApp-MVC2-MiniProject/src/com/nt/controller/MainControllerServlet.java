package com.nt.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.dto.BookDTO;
import com.nt.service.BookStoreMgmtService;
import com.nt.service.BookStoreMgmtServiceImpl;

@WebServlet("/controller")
public class MainControllerServlet extends HttpServlet {
	private BookStoreMgmtService  service;
	@Override
	public void init() throws ServletException {
	    service=new BookStoreMgmtServiceImpl();
	}
	
 	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
       String categories[]=null;
 		String source=null;
 		List<BookDTO> listDTO=null;
 		RequestDispatcher  rd=null;
       //read form data
 		categories=req.getParameterValues("category");
 		source=req.getParameter("source");
 		try {
 		//use service
 		listDTO=service.searchBooksByCategories(categories);
 		//keep the results in request scope
 		 req.setAttribute("listDTO",listDTO);
 		 if(source.equalsIgnoreCase("html")) {
 			 rd=req.getRequestDispatcher("/html_print.jsp");
 			 rd.forward(req, res);
 		 }
 		 else {
 			rd=req.getRequestDispatcher("/excel_screen.jsp");
			 rd.forward(req, res);
 		 }
 		 
 		}//try
 		catch(SQLException se) {
 			req.setAttribute("errorMsg",se.getMessage());
 			rd=req.getRequestDispatcher("/error.jsp");
 			rd.forward(req,res);
 		}
 		catch(Exception e) {
 			req.setAttribute("errorMsg",e.getMessage());
 			rd=req.getRequestDispatcher("/error.jsp");
 			rd.forward(req,res);
 		}
 	}//doGet(-,-)


	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}//doPost(-,-)
	
	@Override
	public void destroy() {
	   service=null;
	}

}
