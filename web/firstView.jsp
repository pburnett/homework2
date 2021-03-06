<%-- 
    Document   : firstView
    Created on : Oct 24, 2016, 7:13:05 PM
    Author     : Dylan Burnett & Ryan Kugel
    Copyright  : copyright © 2016 Dylan Burnett & Ryan Kugel
    http://firstapp-pburnett.rhcloud.com/homework2/
--%>

<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/includes/header.html" %>
<div>
  <h1>Future Value Calculator</h1>
  <form action="calculate" method="post">
    <input type="hidden" name="action" value="add">        
    <label>Investment Amount</label>
    <input type="number" name="investmentAmount" min="0" required><br>
    <label>Yearly Interest Rate</label>
    <input type="number" name="yearlyInvestmentRate" min="0" required><br>
    <label id="numberOfYears">Number of Years</label>
    <input type="number" name="numberOfYears" placeholder="Integer number of years" min="0" required><br>
    <button class="calculateButton" type="submit" value="Calculate">Calculate</button><br>
  </form>
</div>
<%@ include file="/includes/footer.jsp" %>
