package com.sherpa.exambank.stepTwo.service;

import com.sherpa.exambank.stepTwo.domain.ItemDTO;
import com.sherpa.exambank.stepTwo.mapper.StepTwoMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class StepTwoService {

    private final StepTwoMapper stepTwoMapper;

    @Value("${tsherpa.api.url}")
    private String tsherpaURL;



}
