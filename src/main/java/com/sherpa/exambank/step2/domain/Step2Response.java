package com.sherpa.exambank.step2.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Step2Response {
    private Long itemsTotalCnt;
    private String cntEqualYn;
    private String[] levelGroup;
    private String queIdList;
}
