<!--Copyright (c) 2015 Benjamin Fobert, Lawrence Mullen -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/value.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="border">
            <h1>Future Value Calculator</h1>
            <div id="results">
            <label>Investment Amount:</label>
            <span>${value.investAmnt}</span><br>
            <label>Yearly Interest Rate:</label>
            <span>${value.yearlyRate}</span><br>
            <label>Number of Years:</label>
            <span>${value.numYears}</span><br>  
            <label>Future Value:</label>        
            <span>${value.value}</span><br>
            </div>
        </div>
        <footer id="copywrite">
            <%@include file="/includes/footer.jsp" %>
        </footer>
    </body>
</html>
