package com.sherpa.exambank.sample.service;

import com.sherpa.exambank.sample.domain.BoardDTO;
import com.sherpa.exambank.sample.mapper.SampleMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SampleService {

    private final SampleMapper sampleMapper;

    public List<BoardDTO> getAllBoardList() {
        return sampleMapper.getAllBoardList();
    }
}
