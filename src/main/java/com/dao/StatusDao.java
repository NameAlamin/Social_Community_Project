package com.dao;

import com.entity.Status;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class StatusDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void store(Status status){
        Session session = sessionFactory.getCurrentSession();
        try{
            session.save(status);
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        session.flush();
    }
    public List<Status> getAll(){
        Query query = sessionFactory.getCurrentSession()
                .createQuery("SELECT l FROM Status l", Status.class);
        List<Status> statusList = query.list();
        return statusList;
    }

}
