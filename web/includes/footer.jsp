<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%  
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
<footer>
<p>&copy; <%= currentYear %>, Maddie Chilli &amp; Lawrence Mullen</p>
</footer>
</body>
</html>