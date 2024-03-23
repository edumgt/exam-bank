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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
@RequiredArgsConstructor
@Slf4j
public class UserController {
    private final UserService userService;

    // 로그인
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

/*    // 로그아웃
    @GetMapping("/logout")
    public String logout(HttpServletRequest httpServletRequest){
        // 세션 객체 생성
        HttpSession session = httpServletRequest.getSession();

        // 이동할 url
        String url = httpServletRequest.getContextPath();

        // 세션에 로그인 정보가 없을 경우 메인 화면으로 redirect
        if(session.getAttribute("memberIdx") == null){
            url += "/index.jsp";  // [@@@@@@@@@@] 메인 페이지로 수정해야 함. 메인 페이지로 가는 컨트롤러(board/main.do)로 연결해야 한다.
            resp.sendRedirect(url);
            System.out.println("here q");
            return "redirect:/exambank/booklist";
        }

        // 세션에 로그인 정보가 있을 경우, 로그아웃
        session.invalidate(); //세션 삭제

        // redirectURL이 있는 경우 로그아웃 후에 redirectURL으로 이동하게 만들어 준다.
        String requestURI = req.getParameter("redirecturl");
        if(requestURI != null) {
            url += requestURI;
            System.out.println("here q");
        }else{  // 없을 경우, 메인 화면으로 이동한다. [@@@@@@@@@@]
            url += "/index.jsp";  // [@@@@@@@@@@] 메인 페이지로 수정해야 함. 메인 페이지로 가는 컨트롤러(board/main.do)로 연결해야 한다.
            System.out.println("here a");
        }

        resp.sendRedirect(url);
        return "redirect:/exambank/booklist";
    }*/
}
