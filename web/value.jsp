<!--Copyright (c) 2015 Maddie Chilli , Lawrence Mullen -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@include file="/includes/header.jsp" %>
    <body>
        
        
<c:forEach var="valueList" items="${sessionScope.valueList}">
    <tr>
        <td><c:out value='${valueList}'/></td>
    </tr>
</c:forEach>
        
       
            <a href="index.jsp">Return to Calculator</a>
        </div>
            <%@include file="/includes/footer.jsp" %>
    