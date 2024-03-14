package com.sherpa.exambank.booklist.controller;

//import com.sherpa.exambank.booklist.domain.BookListDTO;
//import com.sherpa.exambank.booklist.service.BookListService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.text.ParseException;

@RequiredArgsConstructor
@Controller
@Log4j2
@RequestMapping("/exambank")
public class BookListController {
//    private final BookListService bookListService;

    /**
     * 교재 목록 출력
     * */
    @GetMapping("/exambank")
    public String getBookList() {
        return "exambank/main";
    }

    /**
     * 교재별 시험지 만들기
     * */
    @PutMapping(value = "/exambank")  // postMapping -> putMapping
    public String postSubjectId(/*@ModelAttribute("BookListDTO") BookListDTO bookListDTO,*/ Model model)
            throws ParseException {

        /*Long subjectId = bookListDTO.getSubjectId();
        model.addAttribute("subjectId", subjectId);*/
        return "exambank/main";
    }

    /**
     * 시험지 목록 출력
     * */
    @GetMapping("/ExamBank-Storage")
    public String getStorageList() {
        return "exambank/storage";
    }
}