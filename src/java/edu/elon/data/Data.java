package edu.elon.data;

import java.io.Serializable;

/**
 *
 * @author Dylan Burnett, Ryan Kugel
 */
public class Data implements Serializable{
  private double investmentAmount;
  private double yearlyInvestmentRate;
  private double numberOfYears;
  private double futureValue;
  
  public Data() {
    investmentAmount = 0;
    yearlyInvestmentRate = 0;
    numberOfYears = 0;
    futureValue = 0;
  }
  
  public double getInvestmentAmount() {
    return investmentAmount;
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
  
  public double getNumberOfYears() {
    return numberOfYears;
  }
  
  public void setNumberOfYears(double numberOfYears) {
    this.numberOfYears = numberOfYears;
  }
  
  public double getFutureValue() {
    return futureValue;
  }
  
  public void setFutureValue(double futureValue) {
    this.futureValue = futureValue;
  }
  
  public void calculateFutureValue() {
    futureValue = investmentAmount * (Math.pow(1 + (yearlyInvestmentRate / 100), numberOfYears));
    futureValue = Math.round(futureValue * 100.0) / 100.0;
  }
}
