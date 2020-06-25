package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nt.bo.BookBO;
import com.nt.factory.ConnectionFactory;

public class BookStoreDAOImpl implements BookStoreDAO {

	@Override
	public List<BookBO> findBooksByCategory(String cond) throws SQLException {
	   List<BookBO> listBO=null;
	   BookBO bo=null;
		try(Connection con=ConnectionFactory.getPooledConnection()){
			try(PreparedStatement ps=con.prepareStatement("SELECT BOOKID,BOOKNAME,AUTHOR,PRICE,PUBLISHER,STATUS,CATEGORY FROM  BOOK_STORE WHERE CATEGORY IN "+cond+" ORDER BY CATEGORY")){
				 try(ResultSet rs=ps.executeQuery()){
					//copy ResultSEt object records to listBO collection
						listBO=new ArrayList();
						while(rs.next()) {
							//copy each record into One BookBO class object
							bo=new BookBO();
							bo.setBookId(rs.getInt(1));
							bo.setBookName(rs.getString(2));
							bo.setAuthor(rs.getString(3));
							bo.setPrice(rs.getFloat(4));
							bo.setPublisher(rs.getString(5));
							bo.setStatus(rs.getString(6));
							bo.setCategory(rs.getString(7));
							//add each BO to listBO
							listBO.add(bo);
						}//while
					}//try3
			}//try2
		}//try1
		catch(SQLException  se) {
			se.printStackTrace();
			throw se;  //exception rethrowing to support exception propagation
		}
		catch(Exception e) {
			e.printStackTrace();
			throw e;
		}
	
		return listBO;
	}//methhod

	/*@Override
	public List<BookBO> findBooksByCategory(String cond) throws SQLException{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<BookBO> listBO=null;
		BookBO bo=null;
		try {
			//get Connecction object from jdbc con pool
			con=ConnectionFactory.getPooledConnection();
			//create PreparedStatement object
			ps=con.prepareStatement("SELECT BOOKID,BOOKNAME,AUTHOR,PRICE,PUBLISHER,STATUS,CATEGORY FROM  BOOK_STORE WHERE CATEGORY IN "+cond+" ORDER BY CATEGORY");
		   //execute the SQL query
			rs=ps.executeQuery();
			//copy ResultSEt object records to listBO collection
			listBO=new ArrayList();
			while(rs.next()) {
				//copy each record into One BookBO class object
				bo=new BookBO();
				bo.setBookId(rs.getInt(1));
				bo.setBookName(rs.getString(2));
				bo.setAuthor(rs.getString(3));
				bo.setPrice(rs.getFloat(4));
				bo.setPublisher(rs.getString(5));
				bo.setStatus(rs.getString(6));
				bo.setCategory(rs.getString(7));
				//add each BO to listBO
				listBO.add(bo);
			}//while
		}//try
		catch(SQLException se) {
			se.printStackTrace();
			throw se;
		}
		catch(Exception e) {
			e.printStackTrace();
			throw e;
		}
		finally {
			//close jdbc objs
			try {
				if(rs!=null)
					rs.close();
			}
			catch(SQLException se) {
				se.printStackTrace();
			}
			
			try {
				if(ps!=null)
					ps.close();
			}
			catch(SQLException se) {
				se.printStackTrace();
			}
			
			try {
				if(con!=null)
					con.close();
			}
			catch(SQLException se) {
				se.printStackTrace();
			}
			
		}//finally
		return listBO;
	}//method
	*/
	
	
	
}//class
