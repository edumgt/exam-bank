package com.sherpa.exambank.outapi.resonse;

import com.sherpa.exambank.step2.domain.SubjectInfo;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Response14 {
    private String successYn;
    private List<SubjectInfo> subjectInfoList;
}
