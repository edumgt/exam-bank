package com.sherpa.exambank.step2.domain;

import com.sherpa.exambank.step1.domain.MinorClassification;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Step2Request {
    private List<MinorClassification> chapterList;
    private List<MinorClassification> minorClassification;
    private List<Long> activityCategoryList;
    private List<String> levelCnt;
    private String questionForm;
    private List<String> queArr;
    private String paperGubun;
    private String subjectId;

}
