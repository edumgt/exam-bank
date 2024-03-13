package com.sherpa.exambank.stepTwo.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sherpa.exambank.stepTwo.domain.ItemDTO;
import com.sherpa.exambank.stepTwo.service.StepTwoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class StepTwoController {

    private final StepTwoService stepTwoService;

    @GetMapping("customExam/step2")
    public String getStep2Page(){
        return "customexam/step2";
    }

    @PostMapping("customExam/step2")
    public String postStep2Page(Model model) throws JsonProcessingException{

        String getAllList = stepTwoService.allList();
        model.addAttribute("itemDTOList", getAllList);

        return "customexam/step2";
    }

}
