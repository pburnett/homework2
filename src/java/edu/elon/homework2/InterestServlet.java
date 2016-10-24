/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.elon.homework2;

import edu.elon.data.Data;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dylan
 */
public class InterestServlet extends HttpServlet {

  // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
  /**
   * Handles the HTTP <code>GET</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    doPost(request, response);
  }

  /**
   * Handles the HTTP <code>POST</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String action = request.getParameter("action");
    String url = "/firstView.jsp";

    if (action == null) {
      action = "join";  
    }

    if (action.equals("join")) {
      url = "/firstView.jsp"; 
    } else if (action.equals("add")) {
      Data data = new Data();
      String investmentAmount = request.getParameter("investmentAmount");
      String yearlyInvestmentRate = request.getParameter("yearlyInvestmentRate");
      String numberOfYears = request.getParameter("numberOfYears");
      url = "/secondView.jsp";
    }

    getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
  }

}
