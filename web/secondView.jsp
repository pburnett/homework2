<%-- 
    Document   : secondView
    Created on : Oct 24, 2016, 7:13:31 PM
    Author     : Dylan Burnett & Ryan Kugel
--%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ include file="/includes/header.html" %>

<%@ page import="edu.elon.data.Data" %>
<%
  Data data = (Data) request.getAttribute("data");
  if (data == null) {
    data = new Data();
  }
%>
<div>
  <main>
    <h1>Future Value Calculator</h1>
    <aside class="labels">
      <p>Investment Amount: </p><br>
      <p>Yearly Interest Rate: </p><br>
      <p>Number of Years: </p><br>
      <p>Future Value: </p><br>
    </aside>
    <section class="data">
      <p>$<%= data.getInvestmentAmount()%></p><br>
      <p><%= data.getYearlyInvestmentRate()%></p><br>
      <p><%= data.getNumberOfYears()%></p><br>
      <p>$<%= data.getFutureValue()%></p><br>
    </section>
  </main>
</div>
<%@ include file="/includes/footer.jsp" %>
