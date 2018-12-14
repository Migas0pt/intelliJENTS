package org.academiadecodigo.IntelliJents.ItsAHardLife.controllers;

import net.minidev.json.JSONObject;
import org.academiadecodigo.IntelliJents.ItsAHardLife.models.Question;
import org.academiadecodigo.IntelliJents.ItsAHardLife.services.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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


    /*@RequestMapping(method = RequestMethod.GET, path ={ "/",""})
    public JSONObject showQuestion() {


        JSONObject jo = new JSONObject();

        Question question = gameService.getNextQuestion(currentLevel);

        jo.put("question", question.getText());
        jo.put("answers", question.getAnswers());
        jo.put("correct", question.getCorrectAnswer());

        PrintWriter pw = null;
        try {
            pw = new PrintWriter("JSONfile.json");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        pw.write(jo.toJSONString());

        pw.flush();
        pw.close();

        return jo;

    }*/
    @RequestMapping(method = RequestMethod.GET, value = "api/question")
    public ResponseEntity<JSONObject> showQuestion() {

        JSONObject jo = new JSONObject();

        Question question = gameService.getNextQuestion(currentLevel);

        jo.put("question", question.getText());
        jo.put("answers", question.getAnswers());
        jo.put("correct", question.getCorrectAnswer());

        return new ResponseEntity<>(jo, HttpStatus.OK);

    }


}
