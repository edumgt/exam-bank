package com.sherpa.exambank.method.domain;

import lombok.Data;

import java.util.List;

//@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class Step0ExamResponse {

    private String successYn;
    private List<ExamList> examList;


}
