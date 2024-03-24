package com.sherpa.exambank.step3.mapper;

import com.sherpa.exambank.step3.domain.TestSave2DTO;
import com.sherpa.exambank.step3.domain.TestSaveDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface TestSaveMapper {

    void insertExamData(TestSaveDTO testSaveDTO);

    void insertExamItemData(TestSaveDTO testSaveDTO);

    Long getMaxItemNo(@Param("seq") Long seq);

    void updateItemCount(@Param("seq") Long seq, @Param("itemCnt") Long itemCnt);

    void logicalDeleteExam(@Param("seq") Long seq);

    List<TestSave2DTO> getTestPaper();

    TestSave2DTO getExamById(Long seq);

    void insertNewExam(TestSave2DTO testSave2DTO);

    void insertExamItem(@Param("examSeq") Long examSeq, @Param("itemId") Long itemId);

    List<TestSave2DTO> getTestPaperByUserSeq(String userSeq);
}

