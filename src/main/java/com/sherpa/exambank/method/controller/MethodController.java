package com.sherpa.exambank.method.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MethodController {

    @RequestMapping("/method")
    public String methodPage(){
        return "method/main";
    }
}
