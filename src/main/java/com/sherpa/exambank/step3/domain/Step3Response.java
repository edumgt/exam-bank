package com.sherpa.exambank.step3.domain;

import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
public class Step3Response {
    private List<Long> queIdList;
    private String subjectName;
}
