package com.sherpa.exambank.step1.service;

import com.sherpa.exambank.step1.domain.Chapter;
import com.sherpa.exambank.step1.domain.Step1Request;
import com.sherpa.exambank.step1.domain.Step1Response;
import com.sherpa.exambank.step1.mapper.Step1Mapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
@Slf4j
public class Step1Service {
    private final Step1Mapper step1Mapper;
    @Value("${tsherpa.api.url}")
    private String tsherpaURL;

    public RestTemplate restTemplate(RestTemplateBuilder builder) {
        return builder.build();
    }

    public Step1Response step1Page(Step1Request step1Request) throws ParseException {
        String urn_chapterList = "/chapter/chapter-list";           // 단원정보
        String urn_evaluationList = "/chapter/evaluation-list";     // 평가영역

        Step1Response response = Step1Response.builder()
                                                .chapterList(postRequest(step1Request, urn_chapterList).getChapterList())
                                                .evaluationList(postRequest(step1Request, urn_evaluationList).getEvaluationList())
                                                .build();

        return response;
    }

    private List ResponseEntityToStep1DTOList (String response) throws ParseException {
        // [*****] null일 경우 예외처리

        // String으로 되어져있는 바디부분을 다시 JSON 형태로 파싱
        JSONParser parser = new JSONParser();
        JSONObject data = (JSONObject) parser.parse(response);

        // 파싱된 JSON에서 data 키값으로 get
        JSONArray dataList = (JSONArray) data.get("chapterList");

        // JSONArray -> List<JSONObject>
        List<JSONObject> chapterJsonList = (List<JSONObject>) dataList.stream()
                .collect(Collectors.toList());

        // List<JSONObject> -> List<Step1DTO>
        List<Chapter> chapterList = new ArrayList<>();
        for (JSONObject chapter : chapterJsonList) {
            Chapter s = Chapter.builder()
                    .curriculumCode(chapter.get("curriculumCode").toString())
                    .curriculumName(chapter.get("curriculumName").toString())
                    .subjectId(chapter.get("subjectId").toString())
                    .subjectName(chapter.get("subjectName").toString())
                    .largeChapterId(chapter.get("largeChapterId").toString())
                    .largeChapterName(chapter.get("largeChapterName").toString())
                    .mediumChapterId(chapter.get("mediumChapterId").toString())
                    .mediumChapterName(chapter.get("mediumChapterName").toString())
                    .smallChapterId(chapter.get("smallChapterId").toString())
                    .smallChapterName(chapter.get("smallChapterName").toString())
                    .topicChapterId(chapter.get("topicChapterId").toString())
                    .topicChapterName(chapter.get("topicChapterName").toString())
                    .build();
            chapterList.add(s);
        }

        return chapterList;

        // LinkedHashMap
        /*
        // [*****] 예외처리 해야 함
        // ParseException 예외처리, Exception 예외처리

        // 응답이 200일 때만 응답 body를 linkedhashmap으로 변경
        log.info("postwithParamAndBody getclass" + responseEntity.getBody().getClass());    // string

        log.info("postwithParamAndBody getHeaders : " + responseEntity.getHeaders());
        log.info("postwithParamAndBody getStatusCode : " + responseEntity.getStatusCode()); // 200 OK
        log.info("postwithParamAndBody getStatusCode valueOf : " + ((responseEntity.getStatusCode() == HttpStatusCode.valueOf(200))? "true" : "false") ); // 200 OK
         */
    }


    /**
     * 단원 정보 혹은 평가 영역 api를 호출하여 Step1Response 객체를 반환한다.
     * @param step1Request: 교과서 ID
     * @param urn: 요청 urn
     * @return Step1Response 객체(단원 정보 리스트, 평가 영역 리스트)
     */
    private Step1Response postRequest(Step1Request step1Request, String urn) {
        // 요청 url
        URI url = UriComponentsBuilder
                .fromUriString(tsherpaURL)
                .path(urn)
                .encode()
                .build()
                .toUri();

        // 요청 httpEntity의 header 생성
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        // 요청 httpEntity의 body에 포함 될 jsonObject 생성
        JSONObject body = new JSONObject();
        body.put("subjectId", step1Request.getSubjectId());
        // 요청 HttpEntity
        HttpEntity<String> request = new HttpEntity<>(body.toString(), headers);

        // 요청 & 응답
        RestTemplate restTemplate = new RestTemplate();
        Step1Response step1Response = restTemplate.postForObject(
                url, request, Step1Response.class
        );

        return step1Response;
    }


}
