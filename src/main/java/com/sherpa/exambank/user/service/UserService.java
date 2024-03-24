package com.sherpa.exambank.user.service;

import com.sherpa.exambank.user.domain.LoginRequest;
import com.sherpa.exambank.user.domain.LoginResponse;
import com.sherpa.exambank.user.domain.User;
import com.sherpa.exambank.user.mapper.UserMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {
    private final UserMapper userMapper;

    public LoginResponse login(LoginRequest loginRequest){
        LoginResponse loginResponse;

        // 암호화
        String id = loginRequest.getId().trim();
        String pwd = loginRequest.getPwd().trim();
        String encryptedPassword = getHash(pwd, id).substring(0, 49);

        log.info("encryptedPassword : {}", encryptedPassword);

        User user = User.builder()
                .userId(id)
                .password(encryptedPassword)
                .build();

        // 로그인
        User resultUser = userMapper.login(user);

        // 로그인 결과
        if(resultUser != null && resultUser.getUserId() != null && resultUser.getUserId().length() > 0){    // 로그인 성공
            loginResponse = LoginResponse.builder()
                    .userId(resultUser.getUserId())
                    .name(resultUser.getName())
                    .status("success")
                    .build();
        }else{  // 로그인 실패
            loginResponse = LoginResponse.builder()
                    .status("fail")
                    .build();
        }

        log.info("loginResponse : {}", loginResponse);

        return loginResponse;
    }

    // SHA-256 암호화
    private String getHash(String input, String salt){
        String result = "";
        try {
            // SHA256 알고리즘 객체 생성
            MessageDigest md = MessageDigest.getInstance("SHA-256");

            // salt 지정
            String newSalt = "tsherpa" + salt;

            // 비밀번호와 salt 합친 문자열에 SHA 256 적용
            md.update((input + newSalt).getBytes());
            byte[] hash = md.digest();

            // byte To String (10진수의 문자열로 변경)
            StringBuffer sb = new StringBuffer();
            for (byte b : hash) {
                sb.append(String.format("%02x", b));
            }
            result = sb.toString();
        } catch (Exception e) {
            // 예외 발생시 "" 문자열 리턴
            e.printStackTrace();
        }

        return result;
    }

    public String getSeqById(String id){
        return userMapper.getSeqById(id);
    }
}
