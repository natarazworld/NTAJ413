<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@page contentType="text/html; charset=UTF-8" %>

  <fmt:setLocale  value="hi_US"/>
  
    <fmt:formatNumber  var="fnumber"  value="300000033"  type="currency"/>
    Formatted number is :: ${fnumber}
    <hr>
    <jsp:useBean id="dt"  class="java.util.Date"/>
    <fmt:formatDate var="fdate"  value="${dt}"  type="both"/>
    <br>
    Formatted date :: ${fdate}
    
    <hr>
     <fmt:setBundle basename="com/nt/commons/App"/>
     <fmt:message var="fmsg" key="wish.msg"/>
     message is :: ${fmsg }
    
  