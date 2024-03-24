package com.sherpa.exambank.common.exception;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class ErrorHandler implements ErrorController {

    @GetMapping("/error")
    public String handleError(HttpServletRequest request, Model model){

        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
        // error로 들어온 에러의 status를 불러온다.

        if (status != null){
            int statusCode = Integer.parseInt(status.toString());
            log.info("HandleError = {}",statusCode);
            if (statusCode == HttpStatus.NOT_FOUND.value()){    // 404 error

                model.addAttribute("errorResponse",statusCode);
                return "/error/error";

            } else if (statusCode == HttpStatus.FORBIDDEN.value()){
                model.addAttribute("errorResponse",statusCode);
                return "/error/error";

            } else if (statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()){
                model.addAttribute("errorResponse",statusCode);

                return "/error/error";
            }
        }
        return "/error/error";
    }
}
