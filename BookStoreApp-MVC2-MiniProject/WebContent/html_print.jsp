<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.util.*,com.nt.dto.BookDTO"%>
    
    <%
       List<BookDTO> listDTO=(List<BookDTO>)request.getAttribute("listDTO");
       if(listDTO!=null && listDTO.size()!=0){
    	   %>
    	   
    	   <table border="1"  bgcolor="yellow"  align="center">
    	      <thead align="center">Books belonging to categories :: <%=Arrays.toString(request.getParameterValues("category")) %>  </thead>
    	      <tr bgcolor="red">
     	       <th>SerialNo </th>  <th>BookId </th> <th>BookName </th> <th> Category </th> <th>Author </th> <th>Price </th> <th>Publisher </th> <th>Status </th>
    	      </tr>
    	     <%
    	         for(BookDTO dto:listDTO){  %>
    	           <tr>
    	               <td><%=dto.getSerialNo() %> </td>
    	              <td><%=dto.getBookId() %> </td>
    	              <td><%=dto.getBookName() %> </td>
    	              <td><%=dto.getCategory() %> </td>
    	              <td><%=dto.getAuthor() %> </td>
    	              <td><%=dto.getPrice() %> </td>
    	              <td><%=dto.getPublisher() %> </td>
    	              <td> <%=dto.getStatus() %> </td>
    	           </tr>
    	        	 
    	  <% }
    	     
    	     %>
    	     
    	   </table>
  <%  	   
       }
       else{  %>
    	     <h1 style="color:red;text-align:center"> No books are found </h1>
      <% }
    %>
     <br><br>
       <a href="JavaScript:doPrint()">print</a> <br>
     
      <script language="JavaScript">
           function doPrint(){
        	   frames.focus();
        	   frames.print();
           }
      </script>   --%>
      
      <%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%>
      
      <c:choose>
         <c:when  test="${!empty listDTO }">
             <table border="1"  bgcolor="pink">
                <tr bgcolor="red">
     	           <th>SerialNo </th>  <th>BookId </th> <th>BookName </th> <th> Category </th> <th>Author </th> <th>Price </th> <th>Publisher </th> <th>Status </th>
    	      </tr>
    	      <c:forEach var="dto" items="${listDTO}">
    	            <tr>
    	               <td>${dto.serialNo}</td>
    	               <td>${dto.bookId}</td>
    	               <td>${dto.bookName}</td>
    	               <td>${dto.category}</td>
    	               <td>${dto.author}</td>
    	               <td>${dto.price}</td>
    	               <td>${dto.publisher}</td>
    	               <td>${dto.status}</td>
    	            </tr>
    	      </c:forEach>
             </table>
         </c:when>
         <c:otherwise>
                  <h1 style="color:red;text-align:center">No Books found </h1>
         </c:otherwise>
      </c:choose>
      
     <br><br>
       <a href="JavaScript:doPrint()">print</a> <br>
     
      <script language="JavaScript">
           function doPrint(){
        	   frames.focus();
        	   frames.print();
           }
      </script>  
    
