package com.sherpa.exambank.step1.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Step1Request {
    private Long subjectId;     // 교과서 ID
}
