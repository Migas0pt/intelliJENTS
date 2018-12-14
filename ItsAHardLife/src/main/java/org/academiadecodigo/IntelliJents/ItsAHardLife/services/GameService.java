package org.academiadecodigo.IntelliJents.ItsAHardLife.services;

import org.academiadecodigo.IntelliJents.ItsAHardLife.Randomizer;
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

    private boolean isActive;
    private User activeUser;
    private int level;
    private Map<Integer, Question[]> questions;

    public boolean isActive() {
        return isActive;
    }


    public void setActive(boolean active) {
        isActive = active;
    }

    public User getActiveUser() {
        return activeUser;
    }


    public void setActiveUser(User activeUser) {
        this.activeUser = activeUser;
    }

    public int getLevel() {
        return level;
    }


    public void setLevel(int level) {
        this.level = level;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        GameService that = (GameService) o;

        if (isActive != that.isActive) return false;
        if (level != that.level) return false;
        if (!activeUser.equals(that.activeUser)) return false;
        return questions.equals(that.questions);
    }

    @Override
    public int hashCode() {
        int result = (isActive ? 1 : 0);
        result = 31 * result + activeUser.hashCode();
        result = 31 * result + level;
        result = 31 * result + questions.hashCode();
        return result;
    }

    public Question getNextQuestion(int level) {

        Question question1 = new Question(1, "What is Java's Paradigm?2", "AOP", "IAP", "UES", "OOP", 4);
        Question question2 = new Question(1, "What is Java's Paradigm?3", "AOPs", "IAP", "UES", "OOP", 4);
        Question question3 = new Question(2, "What is Java's Paradigm?4", "AOP", "IAsP", "UES", "OOP", 4);
        Question question4 = new Question(3, "What is Java's Paradigm?5", "AOP", "IAP", "UsES", "OOP", 4);
        Question question5 = new Question(3, "What is Java's Paradigm?6", "AOP", "IAP", "UES", "OOPs", 3);

        questions = new HashMap<>();

        Question[] questionLevel1 = {question1, question2};
        Question[] questionLevel2 = {question3};
        Question[] questionLevel3 = {question4, question5};


        questions.put(1, questionLevel1);
        questions.put(2, questionLevel2);
        questions.put(3, questionLevel3);

        Random random = new Random();

        return questions.get(level)[Randomizer.getRandom(0, questions.get(level).length-1)]; //vamos alterar o max
    }
}
