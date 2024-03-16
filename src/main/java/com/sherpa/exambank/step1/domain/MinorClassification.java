package com.sherpa.exambank.step1.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MinorClassification {
    private Long subject;
    private Long large;
    private Long medium;
    private Long small;
    private Long topic;
}
