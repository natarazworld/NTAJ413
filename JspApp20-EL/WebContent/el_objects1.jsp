<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false" %>
    
     <b>attr1 (request) value  </b> :: ${requestScope.attr1}  <br>
     <b>attr1 (request) value  </b> :: ${attr1}  <br>
     ------------------------------- <br>
     <b>attr2 (session) value  </b> :: ${sessionScope.attr2}  <br>
     <b>attr2 (session) value  </b> :: ${attr2}  <br>
     ------------------------------- <br>
     <b>attr3 (application) value  </b> :: ${applicationScope.attr3}  <br>
     <b>attr3 (application) value  </b> :: ${attr3}  <br>
     ------------------------------- <br>
     <b>attr4  value  </b> :: ${attr4}  <br>
     
     ------------------------------- <br>
     <b>contextParam dbuser  </b> :: ${initParam.dbuser}  <br>
     <b>contextParam dbpwd  </b> :: ${initParam.dbpwd}  <br>
     
     ------------------------------- <br>
       <b> Session ID relaed cookie name ::</b> ${cookie.JSESSIONID.name} <br>
       <b> Session ID relaed cookie value ::</b> ${cookie.JSESSIONID.value} <br>
       
       ------------------------------- <br>
      <b> sname req param value:: ${param.sname}</b> <br>
      <b> sadd req parma values :: ${paramValues.sadd[0] },${paramValues.sadd[1] } </b>
       
       
       
       
     
     
     
     
     
     
     
     
     
     
     
