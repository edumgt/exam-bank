package com.sherpa.exambank.step1.service;

import com.sherpa.exambank.step1.domain.Step1DTO;
import com.sherpa.exambank.step1.mapper.Step1Mapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
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

    public List step1Page(Step1DTO step1DTO) throws ParseException {
        String response = postRequest(step1DTO);
        List list = ResponseEntityToStep1DTOList(response);

        return list;
    }

    private String postRequest(Step1DTO step1DTO) {
        // 요청 url
        URI uri = UriComponentsBuilder
                .fromUriString(tsherpaURL)
                .path("/chapter/chapter-list")
                .encode()
                .build()
                .toUri();

        // 요청 httpEntity
        HttpEntity<Step1DTO> request = new HttpEntity<>(step1DTO);
        log.info("postwithParamAndBody request : " + request);

        // 응답
        String response;
        /*
        HttpComponentsClientHttpRequestFactory factory = new HttpComponentsClientHttpRequestFactory();
        factory.setConnectTimeout(10*1000);      // (연결시 타임) 10초 // [*****] 예외처리
        //factory.setReadTimeout(10*1000);       // (불러온 값 읽는 타임) 10초
        RestTemplate restTemplate = new RestTemplate(factory);
         */
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> responseEntity = restTemplate.postForEntity(
                uri, request, String.class
        );

        response = responseEntity.getBody();

        // [*****] null일 경우 예외처리

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
        List<Step1DTO> chapterList = new ArrayList<>();
        for (JSONObject chapter : chapterJsonList) {
            Step1DTO s = Step1DTO.builder()
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
}
