package com.sherpa.exambank.step3.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.sherpa.exambank.step3.domain.*;
import com.sherpa.exambank.step3.service.StepThreeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.HttpClientErrorException;

import java.io.IOException;

@Controller
@RequiredArgsConstructor
@Slf4j
public class StepThreeController {

    private final StepThreeService stepThreeService;

    ItemListRequest itemListRequest = new ItemListRequest();

    @PostMapping("/customExam/rangeList")
    @ResponseBody
    public ResponseEntity<ItemListResponse> rangeList(@RequestBody ItemListRequest itemListRequest) throws JsonProcessingException {
        log.info("call rangeList");

        try {
            ItemListResponse itemListResponse = stepThreeService.getChapterThreeList(itemListRequest).getBody();
            return new ResponseEntity<>(itemListResponse, HttpStatus.OK);
        } catch (HttpClientErrorException.BadRequest e) {
            // 서버에서 400 오류를 받았을 때 처리할 코드 추가
            log.error("Server returned a 400 Bad Request error: " + e.getRawStatusCode() + " - " + e.getStatusText());
            // 클라이언트에게 적절한 오류 메시지를 반환할 수 있도록 처리
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }


    @PostMapping("/customExam/step3")
    public String moveToStep3 (@ModelAttribute("new_form2") Step3Request step3Request, Model model) throws IOException {
        log.info("Here in moveToStep3 = {}", step3Request); // formdata - vo 바로 맵핑한 결과
        model.addAttribute("curriculumName", step3Request.getCurriculumName());

        Step3Response step3Response = stepThreeService.moveToStep3(step3Request);
        log.info("step3Request data == {}", step3Response);
        log.info(step3Response.getSubjectName());
        model.addAttribute("itemIdList",step3Response.getQueIdList());
        model.addAttribute("subjectName",step3Response.getSubjectName());
        model.addAttribute("subjectId", step3Response.getSubjectId());
        return "/customexam/step3";
    }
}

