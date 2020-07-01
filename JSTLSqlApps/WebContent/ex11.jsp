
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %>

  <!-- establish the connection -->
  <sql:setDataSource var="ds"  driver="oracle.jdbc.driver.OracleDriver" 
                                     url="jdbc:oracle:thin:@localhost:1521:xe"  user="system"  password="manager"/>
                                     
         <sql:update dataSource="${ds}"  sql="UPDATE EMP SET SAL=SAL+? WHERE JOB=?"  var="count">
             <sql:param>500</sql:param>
             <sql:param value="SALESMAN"/>
         </sql:update>
          
          <br> No.of records that are effected :: ${count}  <br>
                                     
                                     
