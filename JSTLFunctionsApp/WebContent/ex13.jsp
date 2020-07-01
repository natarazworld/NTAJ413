<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>

 <c:set var="msg"  value="hello,how are u?"/>
 Upper case :: ${fn:toUpperCase(msg) }  <br>
 Lower case :: ${fn:toLowerCase(msg) }  <br>
 Length :: ${fn:length(msg) }  <br>
 sub string :: ${fn:substring(msg,0,5) }  <br>
 
 
 
 
  