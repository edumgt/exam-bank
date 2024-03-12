package com.sherpa.exambank.stepTwo.domain;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class StepTwoRequest {

    // private Long subjectId;     // 교과서 ID

    private Long domainId;      // 평가 영역 ID
    private String domainName;  // 평가 영역 명

    private String curriculumCode;      // 교육과정
    private String curriculumName;
    private String subjectId;           // 교과서
    private String subjectName;
    private String largeChapterId;      // 대단원
    private String largeChapterName;
    private String mediumChapterId;     // 중단원
    private String mediumChapterName;
    private String smallChapterId;      // 소단원
    private String smallChapterName;
    private String topicChapterId;      // 토픽
    private String topicChapterName;
}
