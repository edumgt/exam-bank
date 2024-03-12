package com.sherpa.exambank.stepTwo.controller;

import com.sherpa.exambank.stepTwo.service.StepTwoService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@Controller
@RequiredArgsConstructor
public class StepTwoController {

    private final StepTwoService stepTwoService;

    @GetMapping("customExam/step2_ck")
    public String getStep2Page(){
        return "customexam/step2_ck";
    }

    @PostMapping("customExam/queList")
    @ResponseBody
    public String getStepOneItemList(){
        return null;
    }
}
