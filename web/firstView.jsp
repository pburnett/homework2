<%-- 
    Document   : firstView
    Created on : Oct 24, 2016, 7:13:05 PM
    Author     : Dylan Burnett & Ryan Kugel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/includes/header.html" %>
<div>
  <h1>Future Value Calculator</h1>
  <form action="calculate" method="post">
    <input type="hidden" name="action" value="add">        
    <label>Investment Amount</label>
    <input type="number" name="investmentAmount" required><br>
    <label>Yearly Interest Rate</label>
    <input type="number" name="yearlyInvestmentRate" required><br>
    <label id="numberOfYears">Number of Years</label>
    <input type="number" name="numberOfYears" placeholder="Integer number of years" required><br>
    <button class="calculateButton" type="submit" value="Calculate">Calculate</button><br>
  </form>
</div>
<%@ include file="/includes/footer.jsp" %>
