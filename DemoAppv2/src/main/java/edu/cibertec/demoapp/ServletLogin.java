/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.cibertec.demoapp;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionEvent;
import java.io.PrintWriter;

@WebServlet(name = "ServletLogin", urlPatterns = {"/Login"})
public class ServletLogin extends HttpServlet
        implements HttpSessionActivationListener {

    private static int ctos_users = 0;

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
            
        String target = "/index.jsp";
       
        
        if (request.getParameter("usuario").equals("admin") && request.getParameter("password").equals("123")) {
            
            HttpSession session = request.getSession(true);
            session.setAttribute("usuario", "Admin");

            HttpSessionEvent se = new HttpSessionEvent(session);
            sessionDidActivate(se);
            target = "/dashboard.jsp";

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(target);
            dispatcher.forward(request, response);
        }
       /*else
        {
            response.setContentType("text/html");      
            PrintWriter pwriter = response.getWriter();
            PrintWriter out = response.getWriter();
            out.write("<p id='errAccess'> User name or password is incorrect!</p>"); 
            RequestDispatcher dispatcher=request.getRequestDispatcher(target);          
            dispatcher.include(request, response);  
            out.close();
   
        }*/
        
        
    }

    @Override
    public void sessionDidActivate(HttpSessionEvent se) {
        ++ctos_users;
        System.out.println("Cantidad de usuarios que ingresaron: " + ctos_users);
    }

    @Override
    public void sessionWillPassivate(HttpSessionEvent se) {
    }
    // <editor-fold defaultstate="collapsed" desc="doGet y doPost">

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
        processRequest(request, response);
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
