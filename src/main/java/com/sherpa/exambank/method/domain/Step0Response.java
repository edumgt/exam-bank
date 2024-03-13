package com.sherpa.exambank.method.domain;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import lombok.ToString;

import java.util.List;

//@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class Step0Response {

    private String successYn;
    private List<ChapterList> chapterList;


}
