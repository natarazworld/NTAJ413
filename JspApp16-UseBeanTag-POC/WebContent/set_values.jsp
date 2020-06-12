<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <!-- To or locate Java bean class object -->
      <jsp:useBean id="cb"   class="com.nt.beans.CustomerBean"  scope="session"/>
      
      <!-- set values to bean Properties  -->
    <%--   <jsp:setProperty property="cno" name="cb"  value="1001"/>
      <jsp:setProperty property="cname" name="cb"  value="raja"/>
      <jsp:setProperty property="cadd" name="cb"  value="hyd"/>
      <jsp:setProperty property="billAmt" name="cb"  value="5000"/> --%>
      
      <!-- set form data bean property values by specifying request param names using "param" attr  -->
     <%--  <jsp:setProperty property="cno" name="cb"  param="custNo"/>
      <jsp:setProperty property="cname" name="cb"  param="custName"/>
      <jsp:setProperty property="cadd" name="cb"  param="custAddrs"/>
      <jsp:setProperty property="billAmt" name="cb"  param="custBamt"/> --%>
      
      <!-- if requst param names are maching bean property names then we can use property="*" -->
         <jsp:setProperty property="*" name="cb" />
   
      
      
      <br> <h1 style="color:red;text-align:center"> values are set to bean properties </h1>
      
      