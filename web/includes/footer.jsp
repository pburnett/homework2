<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%
  GregorianCalendar currentDate = new GregorianCalendar();
  int currentYear = currentDate.get(Calendar.YEAR);
%>
<p id="copyright">&copy; <%= currentYear%>, Peter Dylan Burnett &amp; Ryan Kugel</p>
</body>
</html>