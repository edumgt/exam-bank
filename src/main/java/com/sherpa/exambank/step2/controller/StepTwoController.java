package com.sherpa.exambank.step2.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.sherpa.exambank.step2.domain.ItemDTO;
import com.sherpa.exambank.step2.service.StepTwoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
    @PostMapping ("/customExam/step2")
    public String postStep2Page(ItemDTO itemDTO ,Model model) throws JsonProcessingException {
        List<ItemDTO> itemDTOList = stepTwoService.postResponse(itemDTO);
        model.addAttribute("itemDTOList",itemDTOList);
        log.info("itemDTOList : " + itemDTOList);
        return "customexam/step2";
    }

}
