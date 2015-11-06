<!--Copyright (c) 2015 Maddie Chilli , Lawrence Mullen -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@include file="/includes/header.jsp" %>
    
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <body>
          <div id="border">

       <h1>Future Value Calculator</h1>
       <p>Investment Amount:    ${sessionScope.amount}</p>
       <p>Yearly Interest Rate:    ${sessionScope.rate}</p>
       <p>Number of Year:    ${sessionScope.years}</p>
       <p><b>Year</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Value</b></p>
       
       <div>   
<c:forEach var="yearList" items="${sessionScope.yearList}">
    <tr>
    <p><td><c:out value='${yearList}'/></td></p>
    </tr>
</c:forEach>
       </div>
       
 <div>   
<c:forEach var="valueList" items="${sessionScope.valueList}">
    <tr>
    <p><td><c:out value='${valueList}'/></td></p>
    </tr>
</c:forEach>    
  </div>
    
       
            <a href="index.jsp">Return to Calculator</a>
        </div>
            <%@include file="/includes/footer.jsp" %>
    