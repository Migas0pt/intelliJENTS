package org.academiadecodigo.IntelliJents.ItsAHardLife.models;

import java.util.ArrayList;

/**
 * Created by codecadet on 13/12/2018.
 */
public class Question {

    private int id;
    private int level;
    private String text;
    private ArrayList<String> answers;
    private int correctAnswer;

    public Question(int level, String text, String answers1, String answers2, String answers3, String answers4, int correctAnswer) {
        this.level = level;
        this.text = text;
        this.answers = new ArrayList(4);
        this.answers.add(answers1);
        this.answers.add(answers2);
        this.answers.add(answers3);
        this.answers.add(answers4);
        this.correctAnswer = correctAnswer;
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


    public ArrayList<String> getAnswers() {
        return answers;
    }


    public int getCorrectAnswer() {
        return correctAnswer;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Question question = (Question) o;

        if (id != question.id) return false;
        if (level != question.level) return false;
        if (correctAnswer != question.correctAnswer) return false;
        if (!text.equals(question.text)) return false;
        return answers.equals(question.answers);
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + level;
        result = 31 * result + text.hashCode();
        result = 31 * result + answers.hashCode();
        result = 31 * result + correctAnswer;
        return result;
    }
}
