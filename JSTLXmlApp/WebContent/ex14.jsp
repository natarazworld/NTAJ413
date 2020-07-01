<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml"  prefix="x"%>

<!-- import xml doc -->
 <c:import var="file" url="orders.xml"/>

 <!-- Parse xml doc -->
 <x:parse  var="doc"  doc="${file}" />
 
 <!-- Dipslay all item names and prices -->
 <b> all item details are</b> <br>
 <x:forEach   var="ord" select="$doc/orders/order ">
        <x:out select="$ord/name"/>  &nbsp;
         <x:out select="$ord/price"/> <br>
 </x:forEach>
 <br>
 
  <!-- Dipslay all item names and prices whose price is>10000 -->
 <b> all item details are whose price >10000</b> <br>
 <x:forEach   var="ord" select="$doc/orders/order ">
   <x:if select="$ord/price>10000" >
        <x:out select="$ord/name"/>  &nbsp;
         <x:out select="$ord/price"/> <br>
      </x:if>
      
 </x:forEach>
 <br>
 
 