package com.sherpa.exambank.step1.controller;

import com.sherpa.exambank.step1.domain.Chapter;
import com.sherpa.exambank.step1.domain.Step1Request;
import com.sherpa.exambank.step1.domain.Step1Response;
import com.sherpa.exambank.step1.service.Step1Service;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;
import java.util.Map;

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
     * @param step1Request: 교과서 ID
     * @param model
     * @return: 교과서 ID에 해당하는 단원 정보, 평가 영역을 넣어 jsp 반환
     * @throws ParseException
     */
    @PostMapping("/customExam/step1")
    public String postStep1Page(@ModelAttribute("Step1DTO") Step1Request step1Request, Model model) throws ParseException {
        log.info(String.valueOf(step1Request));

        Step1Response step1Response = step1Service.step1Page(step1Request);
        model.addAttribute("chapterList", step1Response.getChapterList());   // 단원 정보
        model.addAttribute("evaluationList", step1Response.getEvaluationList());   // 평가 영역

        return "customexam/step1_evaluation";
    }

    /**
     * step1 페이지 출력
     * @return:
     */
    @GetMapping("/customExam/step1/evaluation")
    public String getStep1PageEvaluation(){
        return "customexam/step1_evaluation";
    }


    /**
     * step1 페이지 출력
     * @param chapter: 교과서 ID
     * @return: 교과서 ID에 해당하는 단원 정보, 평가 영역을 넣어 jsp 반환
     */
    @PostMapping("/customExam/step1/evaluation")
    public String postStep1PageEvaluation(@ModelAttribute("Step1DTO") Chapter chapter, Model model) throws ParseException {
        log.info(String.valueOf(chapter));

        // List evaluationList = step1Service.step1PageEvaluation(step1DTO);
        // List evaluationList = step1Service.step1PageEvaluation(chapter);
        // model.addAttribute("evaluationList", evaluationList);   // 평가영역
        // model.addAttribute();   // 단원 정보

        return "customexam/step1_evaluation";
    }
}
