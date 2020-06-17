package edu.cibertec.c4e4;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletDemoForward", urlPatterns = {"/DemoForward"})
public class ServletDemoForward extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String radio = request.getParameter("radio");
        double r = 0D;
        try {
            r = Double.valueOf(radio).doubleValue();
        } catch (NumberFormatException e) {
        }
        
        double area = Math.PI * Math.pow(r, 2D);

        request.setAttribute("area", area);

        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(
                "/destino_forward.jsp");

        dispatcher.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="doGet y doPost">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

