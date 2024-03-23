package com.sherpa.exambank.common.exception;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Getter
public class ErrorResponse {

    private final LocalDateTime timestamp = LocalDateTime.now();
    private String message;
    private int status;
    private List<FieldError> validation;
    private String code;

    @Getter
    @Setter
    @NoArgsConstructor
    public static class FieldError {
        private String field;
        private String message;
    }

    public ErrorResponse(ErrorCode errorCode) {
        this.message = errorCode.getMessage();
        this.status = errorCode.getStatus();
        this.code = errorCode.getCode();
    }
    public ErrorResponse(ErrorCode errorCode, List<FieldError> errors) {
        this.message = errorCode.getMessage();
        this.status = errorCode.getStatus();
        this.code = errorCode.getCode();
        this.validation = errors;
    }
}

