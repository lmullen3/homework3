//Copyright (c) 2015 Benjamin Fobert, Lawrence Mullen
package edu.elon.business;

import java.io.Serializable;
import java.text.NumberFormat;
import java.util.ArrayList;

/**
 *
 * @author lawrencemullen & maddie chilli 
 */
public class ValueBean implements Serializable {

    private String InvestAmnt;
    private String YearlyRate;
    private String NumYears;
    private String value;
    private String format;
 

    /**
     *
     */
    public ValueBean() {
        InvestAmnt = "";
        YearlyRate = "";
        NumYears = "";
    }

    /**
     *
     * @param invest
     * @param rate
     * @param years
     */
    public ValueBean(String invest, String rate, String years) {
        this.InvestAmnt = invest;
        this.YearlyRate = rate;
        this.NumYears = years;
    }

    /**
     *
     * @return
     */
    public String getValue() {
        return value;
    }

    /**
     *
     */
    public void setValue() {
        Double calcValue = this.calc();
        value = String.valueOf(calcValue);
    }

    /**
     *
     * @return
     */
    public String getInvestAmnt() {

        return InvestAmnt;
    }

    /**
     *
     * @param invest
     */
    public void setInvestAmnt(String invest) {
        this.InvestAmnt = invest;
    }

    /**
     *
     * @return
     */
    public String getYearlyRate() {
        return YearlyRate;
    }

    /**
     *
     * @param rate
     */
    public void setYearlyRate(String rate) {
        this.YearlyRate = rate;
    }

    /**
     *
     * @return
     */
    public String getNumYears() {
        return NumYears;
    }

    /**
     *
     * @param years
     */
    public void setNumYears(String years) {
        this.NumYears = years;
    }

    /**
     *
     * @return
     */
    public double calc() {
        int years = Integer.parseInt(NumYears);
        double rate = ((Double.parseDouble(YearlyRate) / 100) + 1);
        double value = Double.parseDouble(InvestAmnt);
        int currentYear = 0;
        while (currentYear < years) {
            value = value * rate;
            currentYear++;
            
        }
        return value;
    }

    /**
     *
     * @return
     */
    public String getformat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        this.format = currency.format(this.calc());
        return format;
    }

}
