package org.academiadecodigo.IntelliJents.ItsAHardLife.controllers;

import net.minidev.json.JSONObject;
import org.academiadecodigo.IntelliJents.ItsAHardLife.models.Question;
import org.academiadecodigo.IntelliJents.ItsAHardLife.services.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by codecadet on 13/12/2018.
 */
@Controller
@RequestMapping("/game")
public class GameController {

    private GameService gameService;
    private int currentLevel = 1;



    @Autowired
    public GameService getGameService() {
        return gameService;
    }

    public int getCurrentLevel() {
        return currentLevel;
    }

    public void setCurrentLevel(int currentLevel) {
        this.currentLevel = currentLevel;
    }

    @Autowired
    public void setGameService(GameService gameService) {
        this.gameService = gameService;
    }

    @RequestMapping(method = RequestMethod.GET, path = "/game")
    public JSONObject showQuestion() {


        JSONObject jo = new JSONObject();

        Question question = gameService.getNextQuestion(currentLevel);

        jo.put("question", question.getText());
        jo.put("answers", question.getAnswers());
        jo.put("correct", question.getCorrectAnswer());

        return jo;

    }



}
