package com.sherpa.exambank.step1.service;

import com.sherpa.exambank.step1.domain.*;
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
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.*;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
@Slf4j
public class Step1Service {
    private final Step1Mapper step1Mapper;
    @Value("${tsherpa.api.url}")
    private String tsherpaURL;

    public Step1Response step1Page(Subject subject) {
        String urn_chapterList = "/chapter/chapter-list";           // 단원정보
        String urn_evaluationList = "/chapter/evaluation-list";     // 평가영역

        // 단원 정보 트리 만들기
        List<Chapter> chapterList = postRequest(subject, urn_chapterList).getChapterList();
        Map<String, LinkedHashMap<String, ChapterNode>> map = new HashMap<>();
        for (Chapter chapter : chapterList) {
            makeChapterTree(chapter, map);
        }

        Step1Response response = Step1Response.builder()
                .chapterList(postRequest(subject, urn_chapterList).getChapterList())
                .evaluationList(postRequest(subject, urn_evaluationList).getEvaluationList())
                .chapterTree(map)
                .build();

        return response;
    }

    private List ResponseEntityToStep1DTOList(String response) throws ParseException {
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
     *
     * @param subject: 교과서 ID
     * @param urn:          요청 urn
     * @return Step1Response 객체(단원 정보 리스트, 평가 영역 리스트)
     */
    private Step1Response postRequest(Subject subject, String urn) {
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
        body.put("subjectId", subject.getSubjectId());
        // 요청 HttpEntity
        HttpEntity<String> request = new HttpEntity<>(body.toString(), headers);

        // 요청 & 응답
        RestTemplate restTemplate = new RestTemplate();
        Step1Response step1Response = restTemplate.postForObject(
                url, request, Step1Response.class
        );

        return step1Response;
    }

    /**
     * @param chapter: chapterList의 요소 한 개
     * @param map:     Map<부모 단원 ID, LinkedHashMap<단원 ID, 단원 노드>>
     */
    private void makeChapterTree(Chapter chapter, Map<String, LinkedHashMap<String, ChapterNode>> map) {
        String subjectId = chapter.getSubjectId();
        String largeChapterId = chapter.getLargeChapterId();
        String mediumChapterId = chapter.getMediumChapterId();
        String smallChapterId = chapter.getSmallChapterId();
        String topicChapterId = chapter.getTopicChapterId();

        // 주제의 정보를 담은 루트 노드가 없을 경우 생성
        if (!map.containsKey(subjectId)) {
            LinkedHashMap<String, ChapterNode> lhmap = new LinkedHashMap<>();
            map.put(subjectId, lhmap);
        }

        // 주제의 정보를 담은 루트 노드 아래에 대단원 노드를 추가한다.
        if (!map.get(subjectId).containsKey(largeChapterId)) {
            // chapter의 대단원 노드 생성
            ChapterNode node = ChapterNode.builder()
                    .chapterId(largeChapterId)
                    .chapterName(chapter.getLargeChapterName())
                    .dataCode("large")
                    .build();

            map.get(subjectId).put(largeChapterId, node);
        }

        // 대단원 노드가 없을 경우 생성
        if (!map.containsKey(largeChapterId)) {
            LinkedHashMap<String, ChapterNode> lhmap = new LinkedHashMap<>();
            map.put(largeChapterId, lhmap);
        }

        // 대단원 노드 아래에 중단원 노드를 추가한다.
        if (!map.get(largeChapterId).containsKey(mediumChapterId)) {
            // chapter의 중단원 노드
            ChapterNode node = ChapterNode.builder()
                    .chapterId(mediumChapterId)
                    .chapterName(chapter.getMediumChapterName())
                    .dataCode("medium")
                    .build();

            map.get(largeChapterId).put(mediumChapterId, node);
        }

        // 중단원 노드가 없을 경우 생성
        if (!map.containsKey(mediumChapterId)) {
            LinkedHashMap<String, ChapterNode> lhmap = new LinkedHashMap<>();
            map.put(mediumChapterId, lhmap);
        }

        // 중단원 노드 아래에 소단원 노드를 추가한다.
        if (!map.get(mediumChapterId).containsKey(smallChapterId)) {
            // chapter의 소단원 노드
            ChapterNode node = ChapterNode.builder()
                    .chapterId(smallChapterId)
                    .chapterName(chapter.getSmallChapterName())
                    .dataCode("small")
                    .build();

            map.get(mediumChapterId).put(smallChapterId, node);
        }

        // 소단원 노드가 없을 경우 생성
        if (!map.containsKey(smallChapterId)) {
            LinkedHashMap<String, ChapterNode> lhmap = new LinkedHashMap<>();
            map.put(smallChapterId, lhmap);
        }

        // 소단원 노드 아래에 토픽 노드를 추가한다.
        if (!map.get(smallChapterId).containsKey(topicChapterId)) {
            // chapter의 토픽 노드
            ChapterNode node = ChapterNode.builder()
                    .chapterId(topicChapterId)
                    .chapterName(chapter.getTopicChapterName())
                    .dataCode("topic")
                    .build();

            map.get(smallChapterId).put(topicChapterId, node);
        }
    }

}
