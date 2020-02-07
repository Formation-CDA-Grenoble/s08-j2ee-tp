package com.example.api.entity;

import java.util.Set;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", unique = true, nullable = false)
    private long id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "email", unique = true, nullable = false)
    private String email;

    @OneToMany(mappedBy = "author")
    @JsonIgnoreProperties("author")
    private Set<Article> articles;


    public Set<Article> getArticles() {
    	return this.articles;
    }
    public void setArticles(Set<Article> articles) {
    	this.articles = articles;
    }

    public String getEmail() {
    	return this.email;
    }
    public void setEmail(String email) {
    	this.email = email;
    }

    public String getName() {
    	return this.name;
    }
    public void setName(String name) {
    	this.name = name;
    }

    public long getId() {
    	return this.id;
    }
    public void setId(long id) {
    	this.id = id;
    }
}
