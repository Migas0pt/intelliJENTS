package org.academiadecodigo.IntelliJents.ItsAHardLife.models;

/**
 * Created by codecadet on 13/12/2018.
 */
public class Question {

    private int id;
    private int level;
    private String text;
    private Answer[] answers;
    private int correctAnswer;

    public Question(int id, int level, String text, Answer[] answers) {
        this.id = id;
        this.level = level;
        this.text = text;
        this.answers = answers;
        this.correctAnswer = answers[0].getId();
    }

    public int getId() {
        return id;
    }


    public int getLevel() {
        return level;
    }


    public String getText() {
        return text;
    }


    public Answer[] getAnswers() {
        return answers;
    }


    public int getCorrectAnswer() {
        return correctAnswer;
    }

}
