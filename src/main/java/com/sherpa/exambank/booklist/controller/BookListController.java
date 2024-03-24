package com.sherpa.exambank.booklist.controller;

import com.sherpa.exambank.step3.domain.TestSave2DTO;
import com.sherpa.exambank.step3.service.TestSaveService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@Controller
@Slf4j
@RequestMapping("/exambank")
public class BookListController {

    private final TestSaveService testSaveService;

    /**
     * 교재 목록 출력
     */
    @GetMapping("/booklist")
    public String getBookList() {
        return "exambank/main";
    }

    /**
     * 시험지 목록 출력
     */
    @GetMapping("/storage")
    public String showTestPapers(HttpSession session, Model model) {
        String userId = (String) session.getAttribute("userId");
        List<TestSave2DTO> testPapers = testSaveService.getTestPapersByUserId(userId);
        model.addAttribute("testPapers", testPapers);
        return "exambank/storage";
    }
}
