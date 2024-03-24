package com.sherpa.exambank.user.mapper;

import com.sherpa.exambank.user.domain.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    // 로그인
    public User login(User user);

    String getSeqById(String id);
}
