<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <table border=0 width="100%" height="100%">
        <tr height="30%">
            <td colspan="3"> <jsp:include page="/headerurl"/> </td>
        </tr>
        <tr>
           <td width="20%">
                <%@include file="menu.html" %>
           </td>
           <td width="50%">
              <jsp:include page="welcome.jsp"/>
           </td>
           <td>
               <table>
                    <tr>
                       <td> <jsp:include page="weather_report.jsp"/> </td>
                    </tr>
                    <tr>
                       <td><jsp:include page="horoscope.jsp"/>  </td>
                    <tr>
               </table>
           </td>
        </tr>
       <tr  height="10%">
             <td colspan="3"> <%@include file="footer.html" %> </td>
       </tr>
    </table>