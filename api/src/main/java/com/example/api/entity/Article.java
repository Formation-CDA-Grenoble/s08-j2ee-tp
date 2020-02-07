package com.example.api.entity;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "article")
public class Article {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", unique = true, nullable = false)
    private long id;

    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "date", nullable = false)
    private Date date;

    @Column(name = "content", nullable = false)
    private String content;

    @Column(name = "claps", nullable = false)
    private int claps;


    public int getClaps() {
    	return this.claps;
    }
    public void setClaps(int claps) {
    	this.claps = claps;
    }

    public String getContent() {
    	return this.content;
    }
    public void setContent(String content) {
    	this.content = content;
    }
    
    public Date getDate() {
        return this.date;
    }
    public void setDate(Date date) {
        this.date = date;
    }

    public String getTitle() {
    	return this.title;
    }
    public void setTitle(String title) {
    	this.title = title;
    }

    public long getId() {
    	return this.id;
    }
    public void setId(long id) {
    	this.id = id;
    }
}
