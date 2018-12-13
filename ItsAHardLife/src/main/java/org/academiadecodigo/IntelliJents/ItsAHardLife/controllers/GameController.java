package org.academiadecodigo.IntelliJents.ItsAHardLife.controllers;

/**
 * Created by codecadet on 13/12/2018.
 */
public class GameController {

    private GameService gameService;
    private int currentAnswerId;

    public GameController(GameService gameService) {
        this.gameService = gameService;
    }


}
