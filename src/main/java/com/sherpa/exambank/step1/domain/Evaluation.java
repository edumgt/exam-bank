package com.sherpa.exambank.step1.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Evaluation {
    private Long domainId;    // 평가영역
    private String domainName;
}
