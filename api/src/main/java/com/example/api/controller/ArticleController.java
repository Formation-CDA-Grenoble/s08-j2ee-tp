package com.example.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

import javax.validation.Valid;

import com.example.api.entity.Article;
import com.example.api.repository.ArticleRepository;

@RestController
@RequestMapping("/api/articles")
public class ArticleController {

    @Autowired
    private ArticleRepository articleRepository;

    @PostMapping("")
    public Article createArticle(@Valid @RequestBody Article article) {
        if (article.getDate() == null) {
            article.setDate(new Date());
        }
        return articleRepository.save(article);
    }
}
