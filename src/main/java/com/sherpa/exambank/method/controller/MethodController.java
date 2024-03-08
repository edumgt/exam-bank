package com.sherpa.exambank.method.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MethodController {

    @RequestMapping("/customTest/step0")
    public String methodPage(){
        return "step1";
    }
}
