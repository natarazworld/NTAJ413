<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <% //read form data
      String name=request.getParameter("iname"); 
      float price=Float.parseFloat(request.getParameter("iprice"));
      float qty=Float.parseFloat(request.getParameter("iqty"));  
      //calculate bill Amount
      float billAmount=price* qty;
       
      if(billAmount>=50000){ %>
    	   <jsp:forward page="discount.jsp">
    	           <jsp:param value="<%=billAmount%>" name="bAmt"/>
    	   </jsp:forward>
    	 <%
          }
          else{
    	 %>
    	     <h1 style="color:red;text-align:center"> from bill.jsp  </h1>
    	     <br><b> item name ::  <%=name %> 
    	     <br> item price  ::  <%=price %>
    	      <br>  item qty  ::  <%=qty %> 
    	       <br> Bill Amount :: <%=billAmount %>
    	       </b>
    	    <%
          }
    	    %>   
    	    <br><br><br>
           <a href="input.html">home</a>
           
       
      
      