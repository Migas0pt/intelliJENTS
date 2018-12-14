package org.academiadecodigo.IntelliJents.ItsAHardLife.models;

import org.academiadecodigo.IntelliJents.ItsAHardLife.models.Answer;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@Entity
@Table(name = "question")
public class Question {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private int level;
    private String text;
    @OneToMany(cascade = CascadeType.ALL , mappedBy = "question",
    fetch = FetchType.EAGER,
    orphanRemoval = true)
    private List<Answer> answers;
    private int correctAnswer;

    public Question() {
    }

    public Question(int level, String text, Answer answers1, Answer answers2, Answer answers3, Answer answers4, int correctAnswer) {
        this.level = level;
        this.text = text;
        this.answers = new LinkedList<>();
        this.answers.add(answers1);
        this.answers.add(answers2);
        this.answers.add(answers3);
        this.answers.add(answers4);
        this.correctAnswer = correctAnswer;
    }

    public void addAnswer(Answer answer){

        answers.add(answer);
        answer.setQuestion(this);

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


    public List<Answer> getAnswers() {
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
