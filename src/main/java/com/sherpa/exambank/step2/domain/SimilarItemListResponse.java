package com.sherpa.exambank.step2.domain;

import lombok.Data;

import java.util.List;

@Data
public class SimilarItemListResponse {
    private String successYn;
    private List<ItemDTO> itemList;

}
