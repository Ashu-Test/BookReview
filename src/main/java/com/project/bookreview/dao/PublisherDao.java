/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.bookreview.dao;

import com.project.bookreview.entities.Publisher;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

/**
 *
 * @author ashut
 */
public class PublisherDao {
    
    
    
      private SessionFactory factory;

    public PublisherDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    
    
    
    
    
    
     public boolean isPublisher(String email){
     
        
         Publisher pub=null;
     
           String query="from Publisher where publisherEmail =:e"; 
            Session session=this.factory.openSession();
            
            Query q=session.createQuery(query);
            q.setParameter("e", email);
            pub=(Publisher) q.uniqueResult();
            session.close();
            
       
         
     
         
        return pub!=null;
    }
    
}



