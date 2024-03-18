package com.sherpa.exambank.step3.domain;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
public class TestSaveDTO {

    private String paperTitle;
//    private List<Long> queArr;
    private String textName;

//    private String name; // 기존 필드
//    private Integer itemCount; // itemCount 필드 추가
//
//    // getter 및 setter 메서드
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public Integer getItemCount() {
//        return itemCount;
//    }
//
//    public void setItemCount(Integer itemCount) {
//        this.itemCount = itemCount;
//    }
//생성자에 @JsonCreator 어노테이션 추가
//@JsonCreator
//public TestSaveDTO(@JsonProperty("itemIdList") String itemIdList) {
//}

}