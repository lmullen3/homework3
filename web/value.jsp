<!--Copyright (c) 2015 Maddie Chilli , Lawrence Mullen -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@include file="/includes/header.jsp" %>
    
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <body>

       <h1>Future Value Calculator</h1>
       <p class="calc">Investment Amount:    ${sessionScope.amount}</p>
       <p class="calc">Yearly Interest Rate:    ${sessionScope.rate}</p>
       <p class="calc">Number of Year:    ${sessionScope.years}</p>
       <p id="headers"><b>Year</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Value</b></p>
       
       <div id="year">   
<c:forEach var="yearList" items="${sessionScope.yearList}">
    <tr>
    <p><td><c:out value='${yearList}'/></td></p>
    </tr>
</c:forEach>
       </div>
       
 <div id="value">   
<c:forEach var="valueList" items="${sessionScope.valueList}">
    <tr>
    <p><td><c:out value='${valueList}'/></td></p>
    </tr>
</c:forEach>    
  </div>
    
       
            <a id="return" href="index.jsp">Return to Calculator</a>
  </body>
            <%@include file="/includes/footer.jsp" %>
    