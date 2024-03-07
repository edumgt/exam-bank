package com.sherpa.exambank.step2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StepTwoController {

    @RequestMapping("/customTest/step2")
    public String stepTwoPage(){
        return "step2/step2";
    }
}
