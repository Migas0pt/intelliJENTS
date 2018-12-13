package org.academiadecodigo.IntelliJents.ItsAHardLife.models;

/**
 * Created by codecadet on 13/12/2018.
 */
public class Answer {

    private int id;
    private String text;

    public Answer(int id, String text) {
        this.id = id;
        this.text = text;
    }

    public int getId() {
        return id;
    }

    public String getText() {
        return text;
    }


}
