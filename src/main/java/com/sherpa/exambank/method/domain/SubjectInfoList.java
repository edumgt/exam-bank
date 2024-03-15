package com.sherpa.exambank.method.domain;


import lombok.Builder;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class SubjectInfoList {

    /*
    response 형태
    {
        "subjectId": 1154,
        "subjectName": "국어1-1(노미숙)",
        "curriculumCode": "15",
        "curriculumName": "2015개정 교육과정",
        "schoolLevelCode": "M0",
        "schoolLevelName": "중등",
        "gradeCode": "07",
        "gradeName": "중1",
        "termCode": "01",
        "termName": "1학기",
        "areaCode": "KO",
        "areaName": "국어"
    }
     */

    private Integer subjectId;           // 교과서
    private String subjectName;
    private String curriculumCode;      // 교육과정
    private String curriculumName;
    private String schoolLevelCode;     // 학교
    private String schoolLevelName;
    private String gradeCode;           // 학년
    private String gradeName;
    private String termCode;            // 학기
    private String termName;
    private String areaCode;            // 과목
    private String areaName;

    // Jackson 오류로 인해서 객체를 JSON 내부 리스트로 사용할 때는 기본 생성자를 추가해야 함
    public SubjectInfoList() {
    }
}
