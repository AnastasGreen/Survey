package ru.ssau.domain;

import java.util.List;

public class Category{

    private String       name;
    private List<Survey> surveys;

    public String getName(){
        return name;
    }

    public Category( String name, List<Survey> surveys ){
        this.name = name;
        this.surveys = surveys;
    }

    public void setName( String name ){
        this.name = name;
    }

    public List<Survey> getSurveys(){
        return surveys;
    }

    public void setSurveys( List<Survey> surveys ){
        this.surveys = surveys;
    }
}
