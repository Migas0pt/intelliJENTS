package org.academiadecodigo.IntelliJents.ItsAHardLife;

import org.academiadecodigo.IntelliJents.ItsAHardLife.controllers.GameController;
import org.academiadecodigo.IntelliJents.ItsAHardLife.services.GameService;

/**
 * Created by codecadet on 13/12/2018.
 */
public class Main {


    public static void main(String[] args) {

            GameService gameService = new GameService();

            GameController gameController = new GameController();

            gameController.setGameService(gameService);

        System.out.println(gameController.showQuestion());


        }

}
