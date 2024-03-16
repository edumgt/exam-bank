package com.sherpa.exambank.step2.controller;

import com.sherpa.exambank.step2.domain.Step2Request;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
@Slf4j
public class Step2Controller_jy {
    // private final Step2Service_jy step2ServiceJy;

    @PostMapping("/customExam/step2/test")
    public void postStep2Page(@ModelAttribute("new_form")Step2Request step2Request){
        log.info("postStep2Page : " + step2Request);
    }
}
