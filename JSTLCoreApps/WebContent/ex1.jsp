
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

  <!-- Create scoped data -->
    <c:set var="msg" value="welcome"   scope="request"/>
    <!-- Display scope data -->
    value :: <c:out value="${msg}"/> <br>
    value :: ${requestScope.msg}  <br>
    value :: ${msg} <br>
    <!-- Remove data from the scope -->
    <c:remove var="msg"  scope="request"/>
      <!-- Display scope data -->
     value :: <c:out value="${msg}"/> <br>
    value :: ${requestScope.msg}  <br>
    value :: ${msg} <br>
    
    