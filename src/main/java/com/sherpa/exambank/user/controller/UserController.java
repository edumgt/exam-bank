package com.sherpa.exambank.user.controller;

import com.sherpa.exambank.user.domain.LoginRequest;
import com.sherpa.exambank.user.domain.LoginResponse;
import com.sherpa.exambank.user.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
@RequiredArgsConstructor
@Slf4j
public class UserController {
    private final UserService userService;

    @PostMapping("/login")
    public ResponseEntity<LoginResponse> login(@RequestBody LoginRequest loginRequest, HttpServletRequest httpServletRequest){
        log.info("login loginRequest : {}", loginRequest);

        LoginResponse loginResponse = userService.login(loginRequest);

        // 로그인 성공 시, 세션에 id, name 저장
        if(loginResponse.getStatus().equals("success")){
            // 세션 생성 전, 기존 세션 파기
            httpServletRequest.getSession().invalidate();
            HttpSession session = httpServletRequest.getSession(true);  // Session이 없으면 생성
            // 세션에 userId를 넣어줌
            session.setAttribute("userId", loginResponse.getUserId());
            session.setAttribute("name", loginResponse.getName());
            session.setMaxInactiveInterval(1800); // 30분 동안 유지 (60초 * 30분)
        }

        return ResponseEntity.ok(loginResponse);
    }
}
