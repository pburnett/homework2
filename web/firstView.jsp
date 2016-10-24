<%-- 
    Document   : firstView
    Created on : Oct 24, 2016, 7:13:05 PM
    Author     : Dylan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="styles/main.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>First Page</title>
  </head>
  <body>
    <main>
      <h1>Future Value Calculator</h1>
      <form action="interest" method="post">
        <input type="hidden" name="action" value="add">        
        <label class="pad_top">Investment Amount</label>
        <input type="number" name="investmentAmount" required><br>
        <label class="pad_top">Yearly Interest Rate</label>
        <input type="number" name="yearlyInvestmentRate" required><br>
        <label class="pad_top">Number of Years</label>
        <input type="number" name="numberOfYears" required><br>
      </form>
    </main>
  </body>
</html>
