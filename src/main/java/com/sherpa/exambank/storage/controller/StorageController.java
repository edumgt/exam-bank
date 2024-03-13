package com.sherpa.exambank.storage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StorageController {

    @RequestMapping("/exambank/ExamBank-Storage")
    public String list() {
        return "storage/main";
    }
}