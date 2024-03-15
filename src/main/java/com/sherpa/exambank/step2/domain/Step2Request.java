package com.sherpa.exambank.step2.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Step2Request {
    private List chapterList;
    private List activityCategoryList;
    private List levelCnt;
    private List questionForm;
    private List queArr;
    private String paperGubun;
    private String subjectId;
}
