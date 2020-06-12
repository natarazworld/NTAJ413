<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!-- Locate Java bean class object -->
    <jsp:useBean id="cb"  class="com.nt.beans.CustomerBean"  scope="session"/>
    
    <!-- Read and display bean property values -->
      customer number :: <jsp:getProperty  name="cb"  property="cno"/>  <br>
      customer name :: <jsp:getProperty  name="cb"  property="cname"/>  <br>
      customer addrs :: <jsp:getProperty  name="cb"  property="cadd"/>  <br>
      customer billAmount :: <jsp:getProperty  name="cb"  property="billAmt"/>  <br>
      
      <h1 style="color:red;text-align:center">Bean property values are read and displayed </h1>
      
      
      
