<!--Copyright (c) 2015 Benjamin Fobert, Lawrence Mullen -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <%@include file="/includes/header.jsp" %>
    <body>
        <div id="border">
            <h1>Future Value Calculator</h1>
            <div id="results">
            <jsp:useBean id = "value" scope = "application" class = "edu.elon.business.ValueBean" />    
            <label>Investment Amount:</label>
            <span><jsp:getProperty  name="value" property="investAmnt"/></span><br>
            <label>Yearly Interest Rate:</label>
            <span><jsp:getProperty  name="value" property="yearlyRate"/></span><br>
            <label>Number of Years:</label>
            <span><jsp:getProperty  name="value" property="numYears"/></span><br>  
            <label>Future Value:</label>        
            <span><jsp:getProperty  name="value" property="format"/></span><br>
            </div>
        </div>
    <div id="copyright">
            <%@include file="/includes/footer.jsp" %>
        </div>
    