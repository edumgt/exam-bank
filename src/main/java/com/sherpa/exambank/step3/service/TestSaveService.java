package com.sherpa.exambank.step3.service;

import com.sherpa.exambank.step3.domain.TestSave2DTO;
import com.sherpa.exambank.step3.domain.TestSaveDTO;
import com.sherpa.exambank.step3.mapper.TestSaveMapper;
import com.sherpa.exambank.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
@Slf4j
public class TestSaveService {
    private final UserService userService;
    private final TestSaveMapper testSaveMapper;

    public void saveExamData(TestSaveDTO testSaveDTO) {
        // 로그인 정보
        String userId = testSaveDTO.getUserSeq();
        String userSeq = userService.getSeqById(userId);
        testSaveDTO.setUserSeq(userSeq);

        // 시험지 정보 저장
        testSaveMapper.insertExamData(testSaveDTO);
        log.info(String.valueOf(testSaveDTO));

        // 시험지 문항 정보 저장
        testSaveMapper.insertExamItemData(testSaveDTO);

        // item_cnt 업데이트
        updateItemCount(testSaveDTO);
    }

    private void updateItemCount(TestSaveDTO testSaveDTO) {
        Long maxItemNo = testSaveMapper.getMaxItemNo(testSaveDTO.getSeq());
        if (maxItemNo != null) {
            testSaveMapper.updateItemCount(testSaveDTO.getSeq(), maxItemNo + 1);
        }
    }

    public List<TestSave2DTO> getTestPapersByUserId(String userId) {
        return testSaveMapper.getTestPapersByUserId(userId);
    }

    public void logicalDeleteExamData(Long seq) {
        testSaveMapper.logicalDeleteExam(seq);
    }

    public TestSave2DTO getTestPaperById(Long seq) {
        return testSaveMapper.getExamById(seq);
    }

    public void editAndInsertTestPaper(TestSave2DTO editedTestPaper) {
        // 기존 시험지 정보 가져오기
        TestSave2DTO originalTestPaper = testSaveMapper.getExamById(editedTestPaper.getSeq());

        // 새로운 시험지 정보로 업데이트
        originalTestPaper.setName(editedTestPaper.getName());
        originalTestPaper.setSubjectName(editedTestPaper.getSubjectName());
        originalTestPaper.setItemCnt(editedTestPaper.getItemCnt());

        // 새로운 시험지로 insert
        testSaveMapper.insertNewExam(originalTestPaper);

        // 시험지 문항 정보 가져오기
        List<Long> itemIdList = originalTestPaper.getItemIdList();

        // 새로운 시험지의 seq 가져오기
        Long newSeq = originalTestPaper.getSeq();

        // 기존 시험지 정보의 문항을 새로운 시험지에 복사
        for (Long itemId : itemIdList) {
            testSaveMapper.insertExamItem(newSeq, itemId);
        }
    }
}
