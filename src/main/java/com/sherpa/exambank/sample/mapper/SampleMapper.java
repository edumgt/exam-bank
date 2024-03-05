package com.sherpa.exambank.sample.mapper;

import com.sherpa.exambank.sample.domain.BoardDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SampleMapper {
    List<BoardDTO> getAllBoardList();
}
