<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<c:url  var="googleUrl"  value="https://www.google.com/search" scope="request"/>
 <b>from ex6.jsp </b>
  <c:redirect  url="${googleUrl}"/>
 


