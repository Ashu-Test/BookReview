/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.bookreview.dao;

import com.project.bookreview.entities.Admin;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

/**
 *
 * @author ashut
 */
public class AdminDao {
    
      private SessionFactory factory;

    public AdminDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    
    
    
    
    
    
    
        
    public boolean isAdmin(String email){
     
        
         Admin admin=null;
     
           String query="from Admin where adminEmail =:e"; 
            Session session=this.factory.openSession();
            
            Query q=session.createQuery(query);
            q.setParameter("e", email);
           admin=(Admin) q.uniqueResult();
            session.close();
            
       
         
     
         
        return admin!=null;
    }
    
    
    
}
