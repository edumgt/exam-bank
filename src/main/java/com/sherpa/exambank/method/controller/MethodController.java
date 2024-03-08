package com.sherpa.exambank.method.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MethodController {

    @RequestMapping("/customTest/step0")
    public String methodPage(){
        return "customexam/step0";
    }

    @RequestMapping("/customTest/step1")
    public String firstStepPage(){
        return "customexam/step1";
    }

    @RequestMapping("/customTest/step2")
    public String secondStepPage(){
        return "customexam/step2";
    }
}
