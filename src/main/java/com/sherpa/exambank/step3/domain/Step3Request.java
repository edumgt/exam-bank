package com.sherpa.exambank.step3.domain;

import lombok.Data;

import java.util.List;

@Data
public class Step3Request {
    private List<Long> queArr;
    private String subjectName;
}
