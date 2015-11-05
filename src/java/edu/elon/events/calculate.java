//Copyright (c) 2015 Benjamin Fobert, Lawrence Mullen
package edu.elon.events;
import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.elon.business.ValueBean;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.jni.OS;
/**
 *
 * @author lawrencemullen and maddiechilli
 */
public class calculate extends HttpServlet {
      private ArrayList<String> valueList = new ArrayList<String>();


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
        doPost(request,response);
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
                  HttpSession session = request.getSession();

            GregorianCalendar currentDate = new GregorianCalendar();
            int currentYear = currentDate.get(Calendar.YEAR);
            request.setAttribute("currentYear", currentYear);
            
            String url = "/index.jsp";
        
        // get current action
            String action = request.getParameter("action");
            if (action == null) {
            action = "join";  // default action
        }
            if (action.equals("join")) {
            url = "/index.jsp";    // the "join" page
        }
             else if (action.equals("doCalc")) {
            // get parameters from the request
            String investAmount = request.getParameter("amount");
            String yearlyRate = request.getParameter("rate");
            String numberOfYears = request.getParameter("years");
            session.setAttribute("amount", investAmount);
            session.setAttribute("rate", yearlyRate);
            session.setAttribute("years", numberOfYears);
            
            int years = Integer.parseInt(numberOfYears);
            int x =0;
            // store data in User object
        while(x<years){ 
        x++;
        ValueBean bean = new ValueBean();
        bean.setInvestAmnt(investAmount);
        bean.setYearlyRate(yearlyRate);
        bean.setNumYears(String.valueOf(x));
        bean.setValue();
        valueList.add(bean.getNumYears() + "   " + bean.getValue());
        }
        session.setAttribute("valueList", valueList);
                
        
            url = "/value.jsp";
            
             getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
         } else {
                 url = "/error_404.jsp";
             }
           
    }
}
