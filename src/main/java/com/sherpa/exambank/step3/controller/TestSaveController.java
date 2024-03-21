package com.sherpa.exambank.step3.controller;

import com.sherpa.exambank.step3.domain.TestSave2DTO;
import com.sherpa.exambank.step3.domain.TestSaveDTO;
import com.sherpa.exambank.step3.service.TestSaveService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class TestSaveController {
    private final TestSaveService testSaveService;

    @PostMapping("/customExam/saveExamData")
    @ResponseBody
    public ResponseEntity<?> saveSecondResult(@RequestBody TestSaveDTO testSaveDTO) {
        log.info(String.valueOf(testSaveDTO));
        testSaveService.saveExamData(testSaveDTO);

        return ResponseEntity.status(HttpStatus.OK).body("testSaveDTO");
    }

    @GetMapping("/TestRepository")
    public String showTestPapers(Model model) {
        List<TestSave2DTO> testPapers = testSaveService.getTestPaper();
        model.addAttribute("testPapers", testPapers);
        return "exambank/storage";
    }

//    @GetMapping("/TestRepository")
//    public String showTestPapers(Model model, @RequestParam("userSeq") Long userSeq) {
//        List<TestSave2DTO> testPapers = testSaveService.getTestPaperByUserSeq(userSeq);
//        model.addAttribute("testPapers", testPapers);
//        return "exambank/storage";
//    }

    // 논리 삭제 요청 처리
    @PostMapping("/customExam/deleteExam")
    @ResponseBody
    public ResponseEntity<?> deleteExam(@RequestParam("seq") Long[] seq) {
        for (Long id : seq) {
            log.info("히히" + id);
            testSaveService.logicalDeleteExamData(id);
        }
        return ResponseEntity.status(HttpStatus.OK).body("");
    }

    @GetMapping("/customExam/getTestPaperById/{seq}")
    @ResponseBody
    public ResponseEntity<?> getTestPaperById(@PathVariable("seq") Long seq) {
        TestSave2DTO testPaper = testSaveService.getTestPaperById(seq);
        if (testPaper != null) {
            return ResponseEntity.ok(testPaper);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // 시험지 수정 및 새로운 시험지로 insert 처리
    @PostMapping("/customExam/editAndInsertTestPaper")
    @ResponseBody
    public ResponseEntity<?> editAndInsertTestPaper(@RequestBody TestSave2DTO editedTestPaper) {
        testSaveService.editAndInsertTestPaper(editedTestPaper);
        return ResponseEntity.status(HttpStatus.OK).body("");
    }
}
