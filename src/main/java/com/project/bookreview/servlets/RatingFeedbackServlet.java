/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.bookreview.servlets;

import com.project.bookreview.dao.UserDao;
import com.project.bookreview.entities.Feedback;
import com.project.bookreview.entities.Rating;
import com.project.bookreview.entities.User;
import com.project.bookreview.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;

/**
 *
 * @author ashut
 */
public class RatingFeedbackServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
     
  /*                     // printing values for testing  
             System.out.println("******started*********");
            Enumeration<String> names = request.getParameterNames();

            while (names.hasMoreElements()) {
                String nn = names.nextElement();
                System.out.println(nn);
                System.out.println("*******values********");
                System.out.println(request.getParameter(nn));
            }
    
            System.out.println("*****ended************");        
*/
    byte star=Byte.parseByte(request.getParameter("rating"));
       String feedBack=request.getParameter("feedBack");
          int revId=Integer.parseInt(request.getParameter("revId"));   
        
          
          
            // changes required- get user by session  and user cant give rating to same revview again
                 User user =   new UserDao(FactoryProvider.getFactory()).getUserByEmail("ashutoshtripathi6937@gmail.com");
               
            Rating rating=new Rating(star, user, revId);
           Feedback feed=new Feedback(feedBack, user, revId);
          
          int id=0;
                 UserDao udao=   new UserDao(FactoryProvider.getFactory());
                        udao.saveRatingFeedback(rating, feed);
              out.println("sucess");
//           if(id>0){
//                        out.println("sucess");
//                    }
//                    else{
//                        //   error
//                        out.println("error");
//                    }
            
        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }

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
