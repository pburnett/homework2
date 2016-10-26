<%-- 
    Document   : secondView
    Created on : Oct 24, 2016, 7:13:31 PM
    Author     : Dylan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Second Page</title>
  </head>
  <body>
    <main>
      <h1>Future Value Calculator</h1>
      <p>Investment Amount: ${data.investmentAmount}</p>
      <p>Yearly Interest Rate: ${data.yearlyInterestRate}</p>
      <p>Number of Years: ${data.numberOfYears}</p>
      <p>Future Value: ${data.futureValue}</p>
    </main>
  </body>
</html>
