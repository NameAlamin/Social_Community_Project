package com.dao;

import com.entity.Location;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class LocationDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void insert(Location location){
        Session session = sessionFactory.getCurrentSession();
        try{
            session.save(location);
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        session.flush();
    }
}
