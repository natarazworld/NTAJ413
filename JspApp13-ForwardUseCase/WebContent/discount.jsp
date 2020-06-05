<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
   //gather bill amount as addtional req param value
     float billAmt=Float.parseFloat(request.getParameter("bAmt"));
    //cacluate discount ammount
     float discount=billAmt*0.3f;
     //calculate final bill Amount
    float finalAmount= billAmt-discount;
 %>
    <!-- Display the details ..... -->
     <h1 style="color:red;text-align:center"> from discount.jsp --Bill Details are </h1>
     <b>item name ::  <%=request.getParameter("iname") %>  <br>
           item price ::  <%=request.getParameter("iprice") %>  <br>
           item qty ::  <%=request.getParameter("iqty") %>  <br>
           Bill amount :: <%=billAmt %> <br>
           Discount amount :: <%=discount %>  <br>
           Final Bill Amount ::  <%=finalAmount %> </b>
           <br><br><br>
           <a href="input.html">home</a>
           
           
      