package com.sherpa.exambank.step1.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public class Subject {
    private String curriculumCode;      // 교육과정
    private String curriculumName;
    private String subjectId;           // 교과서
    private String subjectName;
}
