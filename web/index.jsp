<!DOCTYPE html>

<html>
    <head>
        <title>CSC330 Homework 2</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles/index.css">
    </head>
    <body>
        <div id="border">
            <h1>Future Value Calculator</h1>
            <section id="forms">
            <form id="calculator" name="calculator-form" method="post" action="calculate">
                <section id="first"><label>Investment Amount</label>
                    <input type="number" name="amount"  min="0" required autofocus=""></section>
                <br>
                <section id="second"><label>Yearly Interest Rate</label>
                    <input type="number" min="0" name="rate" required></section>
                <br>
                <section id="third"><label>Number of Years</label>
                    <input type="number" min="0" name="years" required></section>
                <input type="submit" value="Calculate" id="calculate" > 
                <input type="hidden" name="action" value="doCalc">
            </form>
            </section>
        </div>
        <footer id="copywrite">
            <%@include file="/includes/footer.jsp" %>
        </footer>
    </body>
