package org.academiadecodigo.IntelliJents.ItsAHardLife.models;

import javax.persistence.*;

/**
 * Created by codecadet on 13/12/2018.
 */
@Entity
@Table(name = "answer")
public class Answer {

    public Answer() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String text;

    @ManyToOne
    private Question question;


    public Answer(String text) {
        this.text = text;
    }


    public String getText() {
        return text;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }
}


