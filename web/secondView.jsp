<%-- 
    Document   : secondView
    Created on : Oct 24, 2016, 7:13:31 PM
    Author     : Dylan Burnett & Ryan Kugel
--%>

<%@ include file="/includes/header.html" %>

<%@ page import="edu.elon.data.Data" %>
<%
  Data data = (Data) request.getAttribute("data");
  if (data == null) {
    data = new Data();
  }
%>

<main>
  <h1>Future Value Calculator</h1>
  <p>Investment Amount: $<%= data.getInvestmentAmount() %></p>
  <p>Yearly Interest Rate: $<%= data.getYearlyInvestmentRate() %></p>
  <p>Number of Years: <%= data.getNumberOfYears() %></p>
  <p>Future Value: $<%= data.getFutureValue() %></p>
</main>

<%@ include file="/includes/footer.jsp" %>
