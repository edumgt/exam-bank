package com.sherpa.exambank.method.controller;

import com.sherpa.exambank.method.domain.Step0Response;
import com.sherpa.exambank.method.service.MethodService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@RequiredArgsConstructor
@Controller
@Slf4j
@RequestMapping("/customExam")
public class MethodController {

    private final MethodService methodService;


    @GetMapping("/step0")
    public String getStep0Page(){
        return "customexam/step0";
    }

    @PostMapping("/step0")
    public String postStep0Page(@RequestParam("subjectId") String subjectId, Model model) throws InstantiationException, IllegalAccessException {
        log.info(subjectId);

        Step0Response step0Response =  methodService.postForChapterListBySubjectId(subjectId);

        model.addAttribute("chapterList", step0Response.getChapterList());

        return "customexam/step0";
    }
}
