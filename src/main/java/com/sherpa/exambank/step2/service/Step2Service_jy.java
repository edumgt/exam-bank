package com.sherpa.exambank.step2.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sherpa.exambank.step1.domain.MinorClassification;
import com.sherpa.exambank.step1.domain.MoveExamStep2Item;
import com.sherpa.exambank.step2.domain.ItemDTO;
import com.sherpa.exambank.step2.domain.Step2Request;
import com.sherpa.exambank.step2.domain.Step2Response;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Slf4j
public class Step2Service_jy {
    public Step2Response moveToStep2(Step2Request step2Request) throws JsonProcessingException {
        Step2Response step2Response = Step2Response.builder()
                        .queIdList(step2Request.getQueArr())
                        .paperGubun(step2Request.getPaperGubun())
                        .subjectId(step2Request.getSubjectId())
                        .chapterList(step2Request.getChapterList())
                        .activityCategoryList(step2Request.getActivityCategoryList())
                        .questionForm(step2Request.getQuestionForm())
                        .build();
        // 난이도별 문제 개수
        List<String> levelCnt = step2Request.getLevelCnt();
        Map<String, Integer> levelGroup = new HashMap<>();
        for(int i=0; i<levelCnt.size(); i++){
            String diffCode = String.format("%02d", (i+1)); // 난이도 코드 문자열
            String cnt = levelCnt.get(i);
            levelGroup.put(diffCode, Integer.parseInt(cnt));
        }
        step2Response.setLevelGroup(levelGroup);

        // log.info("moveToStep2: {}", step2Request.getChapterListJSONString().toString());
        // 단원 정보 List
        ObjectMapper objectMapper = new ObjectMapper();
        MinorClassification[] minorClassificationArray = objectMapper.readValue(step2Request.getChapterListJSONString(), MinorClassification[].class);
        List<MinorClassification> mList = Arrays.asList(minorClassificationArray);
        step2Response.setChapterList(mList);

        // 문제 정보 List
        MoveExamStep2Item[] itemArray = objectMapper.readValue(step2Request.getItemListByForm(), MoveExamStep2Item[].class);
        List<MoveExamStep2Item> itemList = Arrays.asList(itemArray);
        step2Response.setItemList(itemList);

        return step2Response;

        // mList.stream().forEach(m -> log.info("moveToStep2 mList : {}", m.toString()));
    }
}
