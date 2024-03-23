package com.sherpa.exambank.step3.domain;

import lombok.Data;

import java.util.List;

@Data
public class Step3Request {

    private List<Long> queArr;
    private String subjectName;
    private String subjectId;
    private String paperGubun;  // 'new' or 'update'
    private String paperId;  // 시험지 ID
    private String paperTitle; // 시험지 이름
    private String curriculumName; // 커리큘럼 이름

}
