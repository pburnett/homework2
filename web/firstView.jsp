<%-- 
    Document   : firstView
    Created on : Oct 24, 2016, 7:13:05 PM
    Author     : Dylan Burnett & Ryan Kugel
--%>

<%@include file="/includes/header.html" %>

<main>
  <h1>Future Value Calculator</h1>
  <form action="calculate" method="post">
    <input type="hidden" name="action" value="add">        
    <label>Investment Amount</label>
    <input type="number" name="investmentAmount" required><br>
    <label>Yearly Interest Rate</label>
    <input type="number" name="yearlyInvestmentRate" required><br>
    <label>Number of Years</label>
    <input type="number" name="numberOfYears" required><br>
    <input type="submit" value="Calculate">
  </form>
</main>

<%@include file="/includes/footer.jsp" %>
