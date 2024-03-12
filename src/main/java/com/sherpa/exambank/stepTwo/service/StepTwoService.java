package com.sherpa.exambank.stepTwo.service;

import com.sherpa.exambank.stepTwo.domain.StepTwoRequest;
import com.sherpa.exambank.stepTwo.mapper.StepTwoMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.text.ParseException;
import java.util.List;

@Service
@RequiredArgsConstructor
public class StepTwoService {

    private final StepTwoMapper stepTwoMapper;

    @Value("${tsherpa.api.uri}")
    private String tsherpaURL;

    private String reqTestParam;

    public List stepOneToTwo(StepTwoRequest stepTwoRequest) throws ParseException{
        String response = postRequest(stepTwoRequest);
//        List list = ResponseEntityToStepTwoDTOList(response);
        return null;
    }
    public String postRequest (StepTwoRequest stepTwoRequest){

        URI uri = UriComponentsBuilder
                .fromUriString(tsherpaURL)
                .path("/item-img/chapters/item-list")
                .encode()
                .build()
                .toUri();

        HttpEntity<StepTwoRequest> request = new HttpEntity<>(StepTwoRequest);

        String response;

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> responseEntity = restTemplate.postForEntity(uri,request,String.class);

        response = responseEntity.getBody();

        return response;
    }
}
