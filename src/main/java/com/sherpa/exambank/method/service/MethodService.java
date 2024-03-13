package com.sherpa.exambank.method.service;

import com.sherpa.exambank.method.domain.Step0ChapterResponse;
import com.sherpa.exambank.method.domain.Step0ExamResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;

@RequiredArgsConstructor
@Service
@Slf4j
public class MethodService {

    @Value("${tsherpa.api.url}")
    private String tsherpaURL;

    /*public RestTemplate restTemplate(RestTemplateBuilder builder) {
        return builder.build();
    }*/

    public Step0ChapterResponse postForChapterListBySubjectId(String subjectId) throws InstantiationException, IllegalAccessException {
        // 요청 url
        URI uri = UriComponentsBuilder
                .fromUriString(tsherpaURL)
                .path("/chapter/chapter-list") // api #1 교재별 단원 리스트 조회
                .encode()
                .build()
                .toUri();

        // 요청 httpEntity의 header 생성
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        // 요청 httpEntity의 body에 포함 될 jsonObject 생성
        JSONObject step0RequestJson = new JSONObject();
        step0RequestJson.put("subjectId", subjectId);

        HttpEntity<String> request = new HttpEntity<>(step0RequestJson.toString(), headers);
        log.info("postwithParamAndBody request : " + request);

        // post 요청 및 응답
        RestTemplate restTemplate = new RestTemplate();
        Step0ChapterResponse response = restTemplate.postForObject(
                uri, request, Step0ChapterResponse.class
        );

        log.info(response.toString());

        // [*****] null일 경우 예외처리

        return response;

    }

    public Step0ExamResponse postForExamListBySubjectId(String subjectId) {
        // 요청 url
        URI uri = UriComponentsBuilder
                .fromUriString(tsherpaURL)
                .path("/chapter/exam-list") // api #16 교재&대단원 별 T셀파 셋팅지 리스트 조회
                .encode()
                .build()
                .toUri();

        // 요청 httpEntity의 header 생성
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        // 요청 httpEntity의 body에 포함 될 jsonObject 생성
        JSONObject step0RequestJson = new JSONObject();
        step0RequestJson.put("subjectId", subjectId);

        HttpEntity<String> request = new HttpEntity<>(step0RequestJson.toString(), headers);
        log.info("postwithParamAndBody request : " + request);

        // post 요청 및 응답
        RestTemplate restTemplate = new RestTemplate();
        Step0ExamResponse response = restTemplate.postForObject(
                uri, request, Step0ExamResponse.class
        );

        log.info(response.toString());

        // [*****] null일 경우 예외처리

        return response;

    }
}
