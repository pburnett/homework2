<%-- 
    Document   : secondView
    Created on : Oct 24, 2016, 7:13:31 PM
    Author     : Dylan Burnett & Ryan Kugel
    Copyright  : copyright © 2016 Dylan Burnett & Ryan Kugel
--%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/includes/header.html" %>

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
      <p><c:out value="${data.investmentAmount}" /></p><br>
      <p><c:out value="${data.yearlyInvestmentRate}" /></p><br>
      <p><c:out value="${data.numberOfYears}" /></p><br>
      <p><c:out value="${data.futureValue}" /></p><br>
    </section>
  </main>
</div>
<%@ include file="/includes/footer.jsp" %>
