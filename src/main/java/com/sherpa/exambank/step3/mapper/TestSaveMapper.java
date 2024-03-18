package com.sherpa.exambank.step3.mapper;

import com.sherpa.exambank.step3.domain.TestSaveDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TestSaveMapper {

    // 시험지 정보 저장
    void insertExamData(TestSaveDTO testSaveDTO);

    // 시험지 문항 정보 저장
//    void insertExamItemData(TestSaveDTO testSaveDTO);
}
