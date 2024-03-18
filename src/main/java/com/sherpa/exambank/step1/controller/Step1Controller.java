package com.sherpa.exambank.step1.controller;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sherpa.exambank.step1.domain.Chapter;
import com.sherpa.exambank.step1.domain.MinorClassification;
import com.sherpa.exambank.step1.domain.Step1Response;
import com.sherpa.exambank.step1.domain.Subject;
import com.sherpa.exambank.step1.service.Step1Service;
import com.sherpa.exambank.step2.domain.Step2Request;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.parser.ParseException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Tag(name = "step1", description = "step1 API")
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
     * @param subject: 교과서, 교육과정
     * @param model
     * @return: 교과서 ID에 해당하는 단원 정보, 평가 영역을 넣어 jsp 반환
     * @throws ParseException
     */
    @PostMapping("/customExam/step1")
    public String postStep1Page(@ModelAttribute("Subject") Subject subject, Model model) throws ParseException {
        Step1Response step1Response = step1Service.step1Page(subject);
        model.addAttribute("chapterList", step1Response.getChapterList());   // 단원 정보
        model.addAttribute("evaluationList", step1Response.getEvaluationList());   // 평가 영역
        model.addAttribute("chapterTree", step1Response.getChapterTree());   // 단원 정보 트리
        model.addAttribute("subject", subject); // [*****] 교과서 정보

        // subjectName [*****] step2.jsp 출력할 때 보내기

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

    // 문항 수 그려주기
    @PostMapping("/customExam/step1/count")
    public ResponseEntity drawItemCounts(@RequestBody Map<String, String> map){
        log.info("draw Item Counts: " + map.get("subjectId"));
        log.info("draw Item Counts: " + map);

        // listSmallItemCount
        // listTopicItemCount
        // successYn

        return new ResponseEntity<>("test", HttpStatus.OK);
    }

    // step2로 이동
    @PostMapping("/customExam/loadStep2")
    public ResponseEntity moveExamStep2(@RequestBody Map<String, Object> step2Request) throws JsonProcessingException {
        log.info("controller moveExamStep2 : " + step2Request);

        log.info("controller chapterList : " + step2Request.get("chapterList"));
        log.info("controller activityCategoryList : " + step2Request.get("activityCategoryList"));
        log.info("controller levelCnt : " + step2Request.get("levelCnt"));
        log.info("controller questionForm : " + step2Request.get("questionForm"));

        ObjectMapper mapper = new ObjectMapper();
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);

        List<MinorClassification> list = mapper.readValue(step2Request.get("chapterList").toString(), new TypeReference<ArrayList<MinorClassification>>(){});


/*        log.info("controller getLevelCnt : " + step2Request.getLevelCnt());
        log.info("controller getChapterList : " + step2Request.getChapterList());
        log.info("controller getQuestionForm : " + step2Request.getQuestionForm());*/

        // map -> Step2Request
        // Step2Request temp = new Step2Request(step2Request.get("chapterList"), step2Request.get("activityCategoryList"), step2Request.get("levelCnt"), step2Request.get("questionForm("));

        /*log.info("컨트롤러 ", temp);
        step1Service.temp(temp);*/
        // listSmallItemCount
        // listTopicItemCount
        // successYn

        return new ResponseEntity<>("test", HttpStatus.OK);
    }

    @PostMapping("/customExam/loadStep2/test")
    public ResponseEntity moveExamStep2Test(@RequestBody Step2Request step2Request) {
        log.info("moveExamStep2Test : {}", step2Request);
        // chapterList=[MinorClassification{subject=1159, large=115901, medium=11590101, small=1159010101, topic=115901010101}
        // activityCategoryList=[415, 416, 417, 418], levelCnt=[0, 10, 10, 10, 0], questionForm=multiple,subjective,descriptive
        step1Service.moveExamStep2(step2Request);

        // cntEqualYn
        // itemsTotalCnt
        // levelGroup 배열 형태
        // queIdList
        //

        return new ResponseEntity<>("test", HttpStatus.OK);
    }
}
