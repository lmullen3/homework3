
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <label>Investment Amount:</label>
        <span>${value.investAmnt}</span><br>
        <label>Yearly Interest Rate:</label>
        <span>${value.yearlyRate}</span><br>
        <label>Number of Years:</label>
        <span>${value.numYears}</span><br>  
        <label>Future Value:</label>        
        <span>${value.value}</span><br>
    </body>
</html>
