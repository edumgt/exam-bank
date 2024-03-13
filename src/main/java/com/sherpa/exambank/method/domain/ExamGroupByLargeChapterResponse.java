package com.sherpa.exambank.method.domain;

import lombok.Data;

import java.util.List;

//@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class ExamGroupByLargeChapterResponse {

    /*
    response 형태
    {
        "largeChapterId": "115901",
        "largeChapterName": "1. 문학의 샘",
        "examInfoList": [
            {
                "examId": 768,
                "examName": "중_ 국어 3-2(노)_1-1_단원평가_1회_T셀파",
                "itemCnt": "22"
            },
            {
                "examId": 768,
                "examName": "중_ 국어 3-2(노)_1-1_단원평가_1회_T셀파",
                "itemCnt": "22"
            }
        ]
    }
     */

    private String largeChapterId;
    private String largeChapterName;
    private List<ExamInfo> examInfoList;

    @Data
    class ExamInfo{
        private String examId;
        private String examName;
        private String itemCnt;

    }

    public ExamGroupByLargeChapterResponse(String largeChapterId, String largeChapterName) {
        this.largeChapterId = largeChapterId;
        this.largeChapterName = largeChapterName;
    }
}
