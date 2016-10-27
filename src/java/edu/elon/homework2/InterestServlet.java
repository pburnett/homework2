package edu.elon.homework2;

import edu.elon.data.Data;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dylan Burnett, Ryan Kugel
 */
public class InterestServlet extends HttpServlet {

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String action = request.getParameter("action");
    String url = "/firstView.jsp";

    if(action.equals("add")) {
      
      //Gets parameters from request
      double investmentAmount = Double.parseDouble(request.getParameter("investmentAmount"));
      double yearlyInvestmentRate = Double.parseDouble(request.getParameter("yearlyInvestmentRate"));
      double numberOfYears = Double.parseDouble(request.getParameter("numberOfYears"));
      
      //Stores parameters in Data object 
      Data data = new Data();
      data.setInvestmentAmount(investmentAmount);
      data.setYearlyInvestmentRate(yearlyInvestmentRate);
      data.setNumberOfYears(numberOfYears);
      data.calculateFutureValue();
      
      //Store Data object in request
      request.setAttribute("data", data);
      
      //Forwards request to JSP
      url = "/secondView.jsp";
      getServletContext()
              .getRequestDispatcher(url)
              .forward(request, response);
      
    }
    //Forwards request back to firstView.jsp if action is not "interest"
    else {
      getServletContext()
              .getRequestDispatcher(url)
              .forward(request, response);
    }
    
  }
  
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      doPost(request, response);
  }

} 
