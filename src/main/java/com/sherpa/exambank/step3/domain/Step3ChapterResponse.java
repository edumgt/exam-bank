package com.sherpa.exambank.step3.domain;

import com.sherpa.exambank.method.domain.ChapterList;
import lombok.Data;

import java.util.List;

//@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class Step3ChapterResponse {

    private String successYn;
    private List<ChapterList> chapterList;


}
