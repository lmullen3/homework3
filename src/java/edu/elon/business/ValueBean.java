package edu.elon.business;

import java.io.Serializable;

/**
 *
 * @author lawrencemullen & benfobert
 */
public class ValueBean implements Serializable {
    
        private String InvestAmnt;
        private String YearlyRate;
        private String NumYears;
        private String value;
        
    
    public ValueBean() {
        InvestAmnt = "";
        YearlyRate = "";
        NumYears = "";
    }
    public ValueBean(String invest, String rate, String years) {
        this.InvestAmnt = invest;
        this.YearlyRate = rate;
        this.NumYears = years;
    }
    public String getValue(){
        return value;
    }
    public void setValue(){
       Double calcValue =  this.calc();
       value = String.valueOf(calcValue);
    }
   public String getInvestAmnt() {
        return InvestAmnt;
    }

    public void setInvestAmnt(String invest) {
        this.InvestAmnt = invest;
    }

     public String getYearlyRate() {
        return YearlyRate;
    }

    public void setYearlyRate(String rate) {
        this.YearlyRate = rate;
    }
     public String getNumYears() {
        return NumYears;
    }

    public void setNumYears(String years) {
        this.NumYears = years;
    }
      
    public double calc(){
        int years = Integer.parseInt(NumYears);
        double rate = ((Double.parseDouble(YearlyRate)/100)+1);
        double value = Double.parseDouble(InvestAmnt);
        int currentYear = 0;
        while(currentYear < years){
            value = value * rate;
            currentYear++;
        }
        return value;
    }
}
