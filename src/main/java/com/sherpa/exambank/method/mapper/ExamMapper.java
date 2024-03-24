package com.sherpa.exambank.method.mapper;

import com.sherpa.exambank.method.domain.Item;
import com.sherpa.exambank.sample.domain.BoardDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ExamMapper {
    Object getExamInfoByExamId(@Param("seq") String examId);
}
