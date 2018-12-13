package org.academiadecodigo.IntelliJents.ItsAHardLife.models;

/**
 * Created by codecadet on 13/12/2018.
 */
public class User {

    private int id;
    private String name;
    private int score;

    public User(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}
