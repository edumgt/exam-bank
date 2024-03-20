package com.sherpa.exambank.step2.domain;

import lombok.Data;

import java.util.List;

@Data
public class SimilarItemListRequest {

    private List<Long> itemIdList;
    private List<Long> excludeCode;


}
