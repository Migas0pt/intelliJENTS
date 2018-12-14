package org.academiadecodigo.IntelliJents.ItsAHardLife;

import org.academiadecodigo.IntelliJents.ItsAHardLife.controllers.GameController;
import org.academiadecodigo.IntelliJents.ItsAHardLife.crud.Crud;
import org.academiadecodigo.IntelliJents.ItsAHardLife.models.Answer;
import org.academiadecodigo.IntelliJents.ItsAHardLife.models.Question;
import org.academiadecodigo.IntelliJents.ItsAHardLife.services.GameService;

import java.util.HashMap;

/**
 * Created by codecadet on 13/12/2018.
 */
public class Main {


    public static void main(String[] args) {

            GameService gameService = new GameService();

            GameController gameController = new GameController();

            gameController.setGameService(gameService);

        Crud crud = new Crud();
        Answer answer1 = new Answer("work on macOS");
        Answer answer2 = new Answer("explain a topic to Master Yoda");
        Answer answer3 = new Answer("to participate in a Hackathon");
        Answer answer4 = new Answer("leave your computer unlocked");

        Question question = new Question(1,"The most fearful experience will be..",answer1, answer2,answer3,answer4,2);

        question.addAnswer(answer1);
        question.addAnswer(answer2);
        question.addAnswer(answer3);
        question.addAnswer(answer4);

        crud.saveOrUpdate(question);





        }

}
