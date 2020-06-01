<%@ page import="java.sql.*" %>

<%!
private PreparedStatement ps1;
private PreparedStatement ps2;
private Connection con;
private ResultSet rs;
   public void jspInit(){
	try{
      //get Access to ServletConfig object
      ServletConfig cg=getServletConfig();
      //read inint param values
      String driver=cg.getInitParameter("driver");
      String url=cg.getInitParameter("url");
      String user=cg.getInitParameter("user");
      String pwd=cg.getInitParameter("pwd");
      //Load jdbc driver class
      Class.forName(driver);
      //establish  the connection
      con=DriverManager.getConnection(url,user,pwd);
      //create Jdbc PreparedStatemen objects
     ps1=con.prepareStatement("INSERT INTO PRODUCT VALUES(PID_SEQ1.NEXTVAL,?,?,?)");
       ps2=con.prepareStatement("SELECT PID,PNAME,PRICE,QTY FROM PRODUCT");
 	}//try
 	catch(SQLException se){
 		se.printStackTrace();
 	}
 	catch(ClassNotFoundException cnf){
 		cnf.printStackTrace();
 	}
 	catch(Exception e){
 		e.printStackTrace();
 	}

    }//jspInit()
  %>
  <%
      //read the additonal req param (s1)   value
      String pval=request.getParameter("s1");
  //for link
     if(pval.equalsIgnoreCase("link")){
    	 //execute  select query that is made as pre-compiled SQL Query
    	  rs=ps2.executeQuery(); %>
    	  <h1 style="color:red;text-align:left"> List of Products  </h1>
    	 <table border="1" bgcolor="cyan">
    	   <tr bgcolor="red">
    	      <th>PID</th><th>PNAME </th><th>PRICE </th> <th>QTY </th> 
    	   </tr>
    	 <%
    	 //process and display ReusltSet
    	 while(rs.next()){  %>
    	  <tr>
    	     <td><%=rs.getInt(1) %> </td> <td><%=rs.getString(2) %> </td> <td><%=rs.getFloat(3) %> </td> <td><%=rs.getFloat(4) %> </td>
    	  </tr>
  <%  		 
    	 }//while
    	 %>
    	 </table>
    	 
    	<% } //if
     else{   // for button
    	 // read form data
    	 String pname=request.getParameter("pname");
    	 float price=Float.parseFloat(request.getParameter("price"));
    	 float qty=Float.parseFloat(request.getParameter("qty"));
    	 //set values to query parameters
    	 ps1.setString(1,pname);
    	 ps1.setFloat(2,price);
    	 ps1.setFloat(3,qty);
    	 //execute the Query
    	 int result=ps1.executeUpdate();
    	 //process the result
    	 if(result==0){ %>
    		 <h1 style="color:red;text-align:center">Registraion failed </h1>
    	<%  }else{ %>
    	    
    	     <h1 style="color:green;text-align:center">Registraion Succeded </h1>
    		 
    	<% }//else 
  		 
     }//else
         %>
      <br><br>
      <h2> <a href="register.html">home</a></h2>   
         
   
  <%! public void jspDestroy(){
	  
	  //close objs
	    try{
	    	if(rs!=null)
	    		rs.close();
	    }
	  catch(SQLException se){
		  se.printStackTrace();
	  }
	  
	    try{
	    	if(ps1!=null)
	    		ps1.close();
	    }
	  catch(SQLException se){
		  se.printStackTrace();
	  }
	    
	    try{
	    	if(ps2!=null)
	    		ps2.close();
	    }
	  catch(SQLException se){
		  se.printStackTrace();
	  }
	    
	    try{
	    	if(con!=null)
	    		con.close();
	    }
	  catch(SQLException se){
		  se.printStackTrace();
	  }
	  
  
  }//jspDestroy()
   %>