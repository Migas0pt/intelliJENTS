package org.academiadecodigo.IntelliJents.ItsAHardLife.crud;

import org.academiadecodigo.IntelliJents.ItsAHardLife.models.Answer;
import org.academiadecodigo.IntelliJents.ItsAHardLife.models.Question;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.RollbackException;

/**
 * Created by codecadet on 14/12/2018.
 */
public class Crud {

    //private EntityManagerFactory managerFactory = Persistence.createEntityManagerFactory("test");
    //private EntityManager manager = managerFactory.createEntityManager();

    public Question getQuestion(Integer id){
        EntityManagerFactory managerFactory = Persistence.createEntityManagerFactory("test");
        EntityManager manager = managerFactory.createEntityManager();

        try {
            return manager.find(Question.class, id);
        }
        finally {
           if (manager != null){
                manager.close();
            }
        }

    }

    public Question saveOrUpdate(Question question) {
        EntityManagerFactory managerFactory = Persistence.createEntityManagerFactory("test");
        EntityManager manager = managerFactory.createEntityManager();

        try {

            manager.getTransaction().begin(); // open transaction
            Question savedQuestion = manager.merge(question);
            manager.getTransaction().commit(); // close transaction
            return savedQuestion;

        } catch (RollbackException ex) {

            // something went wrong, make sure db is consistent
            manager.getTransaction().rollback();
            return null;

        } finally {
            if (manager != null) {
                manager.close();
            }
        }
    }


}
