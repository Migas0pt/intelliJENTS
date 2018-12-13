package org.academiadecodigo.IntelliJents.ItsAHardLife;

public class Randomizer {

    public static int getRandom(int min, int max) {
        //Returns a random number between a min and a max
        return (int)(Math.floor(Math.random() * (max - min + 1)) + min);
    }
}