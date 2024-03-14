package com.sherpa.exambank.step2.controller;

import com.amazonaws.Response;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.sherpa.exambank.step2.domain.ItemDTO;
import com.sherpa.exambank.step2.service.StepTwoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class StepTwoController {

    private final StepTwoService stepTwoService;
    @GetMapping("/customExam/step2")
    public String getStep2Page(){
        return "customexam/step2";
    }

    // step 2 좌측 아이템 리스트
    @PostMapping ("/customExam/step2")
    public String postStep2Page(Model model) throws JsonProcessingException {
        List<ItemDTO> itemDTOList = stepTwoService.postResponse();
        model.addAttribute("itemDTOList",itemDTOList);
        log.info("itemDTOList : " + itemDTOList);
        return "customexam/step2";
    }

    // step 2 유사문제 버튼 ajaxCall
    @PostMapping("/customExam/similarQueList")
    public String similarQueList(Model model) {
        List<ItemDTO> similarQueList = stepTwoService.similarQueList();
        model.addAttribute("similarQueList",similarQueList);
        return "customexam/step2";
    }
}
