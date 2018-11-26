package br.com.dac.dao;

import org.hibernate.*;

import br.com.dac.HibernateUtil;
import br.com.dac.entity.User;

import java.util.List;

public class UsersDao {
    private static UsersDao dao;

    public static UsersDao getInstanse() {
        if (dao == null) {
            dao = new UsersDao();
        }

        return dao;
    }

    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

    private UsersDao() {}

    public List<User> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Criteria criteria = session.createCriteria(User.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        List<User> result = (List<User>) criteria.list();
        transaction.commit();
        return result;
    }

    public User findById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();
        User user = (User) session.byId(User.class).load(id);
        transaction.commit();
        return user;
    }

    public void save(User user) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(user);
        transaction.commit();
    }

    public void delete(User user) {
        Session session = sessionFactory.getCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.delete(user);
        transaction.commit();
    }
}
