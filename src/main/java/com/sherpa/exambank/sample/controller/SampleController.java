package com.sherpa.exambank.sample.controller;

import com.sherpa.exambank.sample.service.SampleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class SampleController {

    private final SampleService sampleService;

    @RequestMapping("/")
    public String sampleHome(){
        return "sample";
    }
}
