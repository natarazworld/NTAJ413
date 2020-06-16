<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  %>
    
    <!-- create or Locate Service class object -->
    <jsp:useBean id="service"  class="com.nt.service.RotatorService"   scope="application"/>
    
    <%
        // Call the b.method 
        service.nextAdvertisement();
       //enble auto refresh for the webpage
         response.setIntHeader("refresh",3);
    %>
    
    <!-- display advervisement -->
    <div style="text-align: center">
    <a href="<jsp:getProperty property="link" name="service"/>">
        <img src="<jsp:getProperty property="image" name="service"/>"  align="center"  width="400" height="200"/>
    </a>
    </div>
    <br><br>
      <p style="text-align:center"> this is rest page having  main content of web page  </p>
    
