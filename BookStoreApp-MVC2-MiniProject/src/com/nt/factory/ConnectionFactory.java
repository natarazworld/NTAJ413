package com.nt.factory;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionFactory {
	   private static DataSource ds;
	   static {
		    InitialContext ic;
		   try {
			   //create InitialContext
			   ic=new InitialContext();
			   //get DataSource object from Jndi registry through  jndi lookup
			   ds=(DataSource) ic.lookup("java:/comp/env/DsJndi");
		   }
		   catch(NamingException ne) {
			   ne.printStackTrace();
		   }
	   }//static block
	
	   public  static  Connection  getPooledConnection()throws SQLException{
		   Connection con=null;
		   //get Pooled JDBC connection
		   con=ds.getConnection();
		   return con;
	   }//getPooledConnection()
}//class
