package com.sherpa.exambank.method.controller;

import com.sherpa.exambank.method.domain.ExamGroupByLargeChapterResponse;
import com.sherpa.exambank.method.domain.ExamList;
import com.sherpa.exambank.method.domain.Step0ChapterResponse;
import com.sherpa.exambank.method.domain.Step0ExamResponse;
import com.sherpa.exambank.method.service.MethodService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RequiredArgsConstructor
@Controller
@Slf4j
@RequestMapping("/customExam")
public class MethodController {

    private final MethodService methodService;


    @GetMapping("/step0")
    public String getStep0Page(){
        return "customexam/step0";
    }

    @PostMapping("/step0")
    public String postStep0Page(@RequestParam("subjectId") String subjectId, Model model) throws InstantiationException, IllegalAccessException {

        // 교과서 정보 얻어오기
        Step0ChapterResponse step0ChapterResponse =  methodService.postForChapterListBySubjectId(subjectId);
        String subjectName = step0ChapterResponse.getChapterList().get(0).getSubjectName();
        String curriculumName = step0ChapterResponse.getChapterList().get(0).getCurriculumName();

        // 교과서
        Step0ExamResponse step0ExamResponse =  methodService.postForExamListBySubjectId(subjectId);
        List<ExamList> examList = step0ExamResponse.getExamList();

        HashMap<String,String> largeChapterMap = new HashMap<>(); // largeChapterId, largeChapterName

        ArrayList<String> largeChapterIdList = new ArrayList<>();
        ArrayList<String> largeChapterNameList = new ArrayList<>();
        ArrayList<ArrayList<String>> examListByLargeChapterId = new ArrayList<>();

        for (ExamList exam : examList) {

            // 대단원 id 추출 후 리스트 추가
            String largeChapterId = exam.getLargeChapterId();
            if (!largeChapterIdList.contains(largeChapterId)) {
                largeChapterIdList.add(largeChapterId);
            }

            // 대단원 name 추출 후 리스트 추가
            String largeChapterName = exam.getLargeChapterName();
            if (!largeChapterNameList.contains(largeChapterName))
                largeChapterNameList.add(largeChapterName);

            // 대단원 Id 포함 시험지 정보 추출 후 리스트 추가
            ArrayList<String> examInfo = new ArrayList<>();
            examInfo.add(largeChapterId);
            examInfo.add(exam.getExamId());
            examInfo.add(exam.getExamName());
            examInfo.add(String.valueOf(exam.getItemCnt()));
            examListByLargeChapterId.add(examInfo);
        }
        largeChapterIdList.sort(String::compareTo);
        log.info(largeChapterIdList.toString());
        largeChapterNameList.sort(String::compareTo);
        log.info(largeChapterNameList.toString());


        ArrayList<ExamGroupByLargeChapterResponse> examGroupByLargeChapterResponses = new ArrayList<>();
        for(String id : largeChapterIdList){
            examGroupByLargeChapterResponses.add(
                    new ExamGroupByLargeChapterResponse(id, largeChapterNameList.get(largeChapterIdList.indexOf(id)))
            );
            log.info(examGroupByLargeChapterResponses.toString());
        }

        for (ArrayList<String> examInfo: examListByLargeChapterId) {
//            if(String.valueOf(examInfo.get(0)).equals())
            log.info(String.valueOf(examInfo.get(0)));
            for(String id:largeChapterIdList) {
                if (String.valueOf(examInfo.get(0)).equals(id)){
                    ExamGroupByLargeChapterResponse matchedResponse = examGroupByLargeChapterResponses.get(largeChapterIdList.indexOf(id));
                    matchedResponse.getExamInfoList().add(new ExamGroupByLargeChapterResponse.ExamInfo(
                            examInfo.get(1),examInfo.get(2),examInfo.get(3)
                    ));
                }
            }
        }
        log.info(String.valueOf(examGroupByLargeChapterResponses));
        model.addAttribute("response",examGroupByLargeChapterResponses);


        
        
        
        
        
        model.addAttribute("chapterList", step0ChapterResponse.getChapterList());
        model.addAttribute("examList", step0ExamResponse.getExamList());

        return "customexam/step0";
    }
}
