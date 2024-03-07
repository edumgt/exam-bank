package com.sherpa.exambank.paperlist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaperListController {

    @RequestMapping("/exambank/paperlist")
    public String list() {
        return "paperlist/main";
    }
}