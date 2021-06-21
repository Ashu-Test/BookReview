package com.project.bookreview.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.project.bookreview.entities.Review;
import com.project.bookreview.helper.FactoryProvider;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Review review=null;
			int rId=Integer.parseInt(request.getParameter("rid").trim());
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			 Query q=s.createQuery("from Review as p where p.reviewId =:id");
		       q.setParameter("id", rId);
		       
		      review=(Review) q.uniqueResult();
		      s.delete(review);;
		      
		      tx.commit();       
		      s.close();

			response.sendRedirect("Publisher.jsp");
			
			
			
			
			
		}
		catch(Exception e) {
			
		}
		
	}


}
