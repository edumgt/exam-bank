package com.sherpa.exambank.step3.domain;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class TestSave2DTO {

        private Long seq; // 시험지 시퀀스 넘버
        private String name; // 시험지명
//        private Long userSeq; //
        private List<Long> itemIdList; // 문항ID리스트
        private String subjectName;// 교과서명
        private LocalDateTime regDate; // 작성 날짜
        private int itemCnt; // 문항 수
        private int deleteFlag; // 삭제 플래그 (0: 유지, 1: 삭제)


}
