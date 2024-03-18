package com.sherpa.exambank.step3.service;

import com.sherpa.exambank.step3.domain.TestSaveDTO;
import com.sherpa.exambank.step3.mapper.TestSaveMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@RequiredArgsConstructor
public class TestSaveService {

    private final TestSaveMapper testSaveMapper;


    @Transactional
    public void saveExamData(TestSaveDTO testSaveDTO) {
        // 시험지 정보 저장
        testSaveMapper.insertExamData(testSaveDTO);

        // 시험지 문항 정보 저장
//        testSaveMapper.insertExamItemData(testSaveDTO);
    }
}
