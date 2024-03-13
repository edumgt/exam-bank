package com.sherpa.exambank.booklist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookListController {

    @RequestMapping("/exambank/booklist")
    public String list() {
        return "booklist/main";
    }
}