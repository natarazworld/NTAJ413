
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %>

  <!-- establish the connection -->
  <sql:setDataSource var="ds"  driver="oracle.jdbc.driver.OracleDriver" 
                                     url="jdbc:oracle:thin:@localhost:1521:xe"  user="system"  password="manager"/>
   <!-- execute select SQL query -->
   <sql:query dataSource="${ds}"  var="rs" sql="SELECT EMPNO,ENAME,JOB,SAL FROM EMP"/>
   
   <!-- Process the ResultSet object -->
   
   <c:forEach  var="row" items="${rs.rows}">
       ${row.empno } &nbsp;${row.ename } &nbsp;${row.job } &nbsp;${row.sal} &nbsp; <br>      
   </c:forEach>
                                     
