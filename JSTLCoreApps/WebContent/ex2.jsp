
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

     <c:set var="msg"  value="welcome" scope="request"/>
     
     <c:if test="${!empty param.uname }">
           <c:out  value="${msg }" />  <c:out value="${param.uname }"/>
     </c:if> <br>
     <b>end of the jsp page</b>
     
     
    
    