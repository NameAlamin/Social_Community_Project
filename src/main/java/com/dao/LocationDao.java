package com.dao;

import com.entity.Location;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

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

//    public List<Location> getAll() {
//        Query query = sessionFactory.getCurrentSession().
//                createQuery("SELECT l FROM Location l", Location.class);
//        List<Location> locationList = query.list();
//        return locationList;
//    }

    public List<Location> getAll(){
        Query query = sessionFactory.getCurrentSession()
                .createQuery("SELECT location FROM Location location",Location.class);
        List<Location> locationList = query.list();
        return locationList;
    }
}
