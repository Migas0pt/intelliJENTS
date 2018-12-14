package org.academiadecodigo.IntelliJents.ItsAHardLife.services;

import org.academiadecodigo.IntelliJents.ItsAHardLife.Randomizer;
import org.academiadecodigo.IntelliJents.ItsAHardLife.crud.Crud;
import org.academiadecodigo.IntelliJents.ItsAHardLife.models.Question;
import org.academiadecodigo.IntelliJents.ItsAHardLife.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * Created by codecadet on 13/12/2018.
 */
@Service
public class GameService {

    private boolean isActive = true;
    private User activeUser;
    private Map<Integer, Question[]> questions;
    private Crud crud = new Crud();

    public User getActiveUser() {
        return activeUser;
    }

    public void setActiveUser(User activeUser) {
        this.activeUser = activeUser;
    }


    public Question getNextQuestion(int level) {

        /*Question question1 = new Question(1, "What is Java's Paradigm?1.1", "AOP", "IAP", "UES", "OOP", 4);
        Question question2 = new Question(1, "What is Java's Paradigm?1.2", "AOPs", "IAP", "UES", "OOP", 4);
        Question question3 = new Question(2, "What is Java's Paradigm?2", "AOP", "IAsP", "UES", "OOP", 4);
        Question question4 = new Question(3, "What is Java's Paradigm?3.1", "AOP", "IAP", "UsES", "OOP", 4);
        Question question5 = new Question(3, "What is Java's Paradigm?3.2", "AOP", "IAP", "UES", "OOPs", 3);
        Question question6 = new Question(4, "What is Java's Paradigm?4", "AOP", "IAP", "UES", "OOPs", 3);
        Question question7 = new Question(5, "What is Java's Paradigm?5", "AOP", "IAP", "UES", "OOPs", 3);
        Question question8 = new Question(6, "What is Java's Paradigm?6", "AOP", "IAP", "UES", "OOPs", 3);
        Question question9 = new Question(7, "What is Java's Paradigm?7", "AOP", "IAP", "UES", "OOPs", 3);
        Question question10 = new Question(8, "What is Java's Paradigm?8", "AOP", "IAP", "UES", "OOPs", 3);

        questions = new HashMap<>();

        Question[] questionLevel1 = {question1, question2};
        Question[] questionLevel2 = {question3};
        Question[] questionLevel3 = {question4, question5};
        Question[] questionLevel4 = {question6};
        Question[] questionLevel5 = {question7};
        Question[] questionLevel6 = {question8};
        Question[] questionLevel7 = {question9};
        Question[] questionLevel8 = {question10};

        questions.put(1, questionLevel1);
        questions.put(2, questionLevel2);
        questions.put(3, questionLevel3);
        questions.put(4, questionLevel4);
        questions.put(5, questionLevel5);
        questions.put(6, questionLevel6);
        questions.put(7, questionLevel7);
        questions.put(8, questionLevel8);


        Random random = new Random();*/

        //return questions.get(level)[Randomizer.getRandom(0, questions.get(level).length-1)]; //vamos alterar o max

        return crud.getQuestion(level);
    }

    public void end() {
        isActive = false;
    }

    public Crud getCrud() {
        return crud;
    }

    public void setCrud(Crud crud) {
        this.crud = crud;
    }
}