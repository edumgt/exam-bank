package com.sherpa.exambank.step1.controller;

import com.sherpa.exambank.step1.domain.Step1DTO;
import com.sherpa.exambank.step1.service.Step1Service;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequiredArgsConstructor
@Controller
@Slf4j
public class Step1Controller {
    private final Step1Service step1Service;

    /**
     * step1 페이지 출력
     * @return:
     */
    @GetMapping("/customExam/step1")
    public String getStep1Page(){
        return "customexam/step1_jy";
    }

    /**
     * step1 페이지 출력
     * @param step1DTO: 교과서 ID
     * @return: 교과서 ID에 해당하는 단원 정보, 평가 영역을 넣어 jsp 반환
     */
    @PostMapping("/customExam/step1")
    public String postStep1Page(@ModelAttribute("Step1DTO") Step1DTO step1DTO, Model model) throws ParseException {
        log.info(String.valueOf(step1DTO));

        List evaluationList = step1Service.step1Page(step1DTO);
        model.addAttribute("evaluationList", evaluationList);   // 단원 정보
        // model.addAttribute();   // 평가 영역

        return "customexam/step1_jy";
    }
}
