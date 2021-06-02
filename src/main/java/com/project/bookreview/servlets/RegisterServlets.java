package com.project.bookreview.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.project.bookreview.dao.UserDao;
import com.project.bookreview.entities.User;
import com.project.bookreview.helper.FactoryProvider;

public class RegisterServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public RegisterServlets() {
        super();
       
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		
		
		String gender = request.getParameter("inlineRadioOptions");
		
		
	
		  User user=new User(name,email,password,address,gender);
		  UserDao userDao=  new UserDao(FactoryProvider.getFactory());
		  userDao.saveUser(user);
		  
		  PrintWriter out=response.getWriter();
		  out.println("success");
	}

}
