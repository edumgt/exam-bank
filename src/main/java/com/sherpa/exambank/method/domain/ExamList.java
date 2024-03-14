package com.sherpa.exambank.method.domain;


import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ExamList {

    /*
    response 형태
    {
        "largeChapterId": 115901,
        "largeChapterName": "1. 문학의 샘",
        "examId": 768,
        "examName": "중_ 국어 3-2(노)_1-1_단원평가_1회_T셀파",
        "itemCnt": 22
    }
     */

    private String largeChapterId;      // 대단원
    private String largeChapterName;
    private String examId;              // 셋팅지
    private String examName;
    private Integer itemCnt;            // 문항수

    // Jackson 오류로 인해서 객체를 JSON 내부 리스트로 사용할 때는 기본 생성자를 추가해야 함
    public ExamList() {
    }

    public ExamList(String examId, String examName, Integer itemCnt) {
    }
}
