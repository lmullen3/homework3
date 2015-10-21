<!DOCTYPE html>
<!--Copyright (c) 2015 Benjamin Fobert, Lawrence Mullen -->
 <%@include file="/includes/header.jsp" %> 

<body>
        <div id="border">
            <h1>Future Value Calculator</h1>
            <section id="forms">
            <form id="calculator" name="calculator-form" method="post" action="calculate">
                <section id="first"><label>Investment Amount</label>
                    <input type="number" name="amount"  min="0" required autofocus=""></section>
                <br>
                <section id="second"><label>Yearly Interest Rate</label>
                    <input type="number" step="any" min="0" name="rate" required></section>
                <br>
                <section id="third"><label>Number of Years</label>
                    <input type="number" min="0" name="years" placeholder="Integer Number of Years" required></section>
                <input type="submit" value="Calculate" id="calculate" > 
                <input type="hidden" name="action" value="doCalc">
            </form>
            </section>
        </div>
        <div id="copyright">
            <%@include file="/includes/footer.jsp" %>
        </div>
