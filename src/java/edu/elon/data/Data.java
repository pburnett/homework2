package edu.elon.data;

import java.io.Serializable;
import java.text.NumberFormat;

/**
 *
 * @author Dylan Burnett, Ryan Kugel
 * @copyright 2016 Dylan Burnett & Ryan Kugel
 */
public class Data implements Serializable {

  private double investmentAmount;
  private double yearlyInvestmentRate;
  private int numberOfYears;
  private double futureValue;

  public Data() {
    investmentAmount = 0;
    yearlyInvestmentRate = 0;
    numberOfYears = 0;
    futureValue = 0;
  }

  public String getInvestmentAmount() {
    NumberFormat currencyFormat = NumberFormat.getCurrencyInstance();
    return currencyFormat.format(investmentAmount);
  }

  public void setInvestmentAmount(double investmentAmount) {
    this.investmentAmount = investmentAmount;
  }

  public double getYearlyInvestmentRate() {
    return yearlyInvestmentRate;
  }

  public void setYearlyInvestmentRate(double yearlyInvestmentRate) {
    this.yearlyInvestmentRate = yearlyInvestmentRate;
  }

  public int getNumberOfYears() {
    return numberOfYears;
  }

  public void setNumberOfYears(int numberOfYears) {
    this.numberOfYears = numberOfYears;
  }

  public String getFutureValue() {
    NumberFormat currencyFormat = NumberFormat.getCurrencyInstance();
    return currencyFormat.format(futureValue);
  }

  public void setFutureValue(double futureValue) {
    this.futureValue = futureValue;
  }

  public void calculateFutureValue() {
    futureValue = investmentAmount * (Math.pow(1 + (yearlyInvestmentRate / 100), numberOfYears));
    futureValue = Math.round(futureValue * 100.0) / 100.0;
  }
}
