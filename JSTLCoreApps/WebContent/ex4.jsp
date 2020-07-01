
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

 <!-- Trandtional for lookup -->
 <table border="1" bgcolor="cyan">
    <c:forEach var="i"  begin="1"  end="10"  step="1" >
       <tr bgcolor="red">
           <td> 2 *  ${i } =</td>
           <td>${2 * i } </td>
       </tr>  
    </c:forEach>
  </table>
  
  <hr>
  <!-- Enhance for for loop -->
  <jsp:scriptlet>
      String names[]=new String[]{"raja","rani","jani","mahi"};
      request.setAttribute("namesList",names);
  </jsp:scriptlet>
  <c:forEach var="name" items="${namesList}">
           ${name} <br>
  </c:forEach>
  <br>
  <!-- nested for loop -->
  <c:forEach var="p"  items="${paramValues}">
       param name :: ${p.key} <br>
       param values 
       <c:forEach var="pv" items="${p.value }">
                ${pv}
       </c:forEach>
    <br>
  </c:forEach>
  
  

    