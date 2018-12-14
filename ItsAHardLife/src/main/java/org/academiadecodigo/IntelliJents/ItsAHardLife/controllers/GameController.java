package org.academiadecodigo.IntelliJents.ItsAHardLife.controllers;

import net.minidev.json.JSONObject;
import org.academiadecodigo.IntelliJents.ItsAHardLife.models.Question;
import org.academiadecodigo.IntelliJents.ItsAHardLife.services.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.FileNotFoundException;
import java.io.PrintWriter;

/**
 * Created by codecadet on 13/12/2018.
 */
@RestController
@RequestMapping("/")
public class GameController {

    private GameService gameService;
    private int currentLevel = 1;
    private int attempts = 10;


    public GameService getGameService() {
        return gameService;
    }

    public int getCurrentLevel() {
        return currentLevel;
    }

    @Autowired
    public void setGameService(GameService gameService) {
        this.gameService = gameService;
    }


    @RequestMapping(method = RequestMethod.GET, value = "api/question")
    public ResponseEntity<JSONObject> showQuestion() {

        if (attempts == 0) {
            gameService.end();
        }

        JSONObject jo = new JSONObject();

        Question question = gameService.getNextQuestion(currentLevel);

        jo.put("question", question.getText());
        jo.put("answers", question.getAnswers());
        jo.put("correct", question.getCorrectAnswer());

        return new ResponseEntity<>(jo, HttpStatus.OK);

    }


    @RequestMapping(method = RequestMethod.GET, value = "api/question/T")
    public void correctAnswer() {

        attempts--;
        currentLevel++;

    }

    @RequestMapping(method = RequestMethod.GET, value = "api/question/F")
    public void incorrectAnswer() {

        attempts--;
        currentLevel++;
    }


}