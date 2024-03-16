package com.sherpa.exambank.step2.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.sherpa.exambank.step1.domain.MinorClassification;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.json.simple.JSONObject;

import java.util.List;
import java.util.Map;

//@JsonFormat(with = JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Step2Request {
    private List<MinorClassification> chapterList;
    private List<String> minorClassification;
    private List<Long> activityCategoryList;
    private List<String> levelCnt;
    private String questionForm;
    private List<String> queArr;
    private String paperGubun;
    private String subjectId;
}
