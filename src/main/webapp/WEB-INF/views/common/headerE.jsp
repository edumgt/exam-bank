<%--
  User: 이양진
  Date: 2024-03-08
  Description: 문제은행 서비스 헤더 ('문제은행' 타이틀, 중학, 시험지보관함 탭)
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<main class="testbank_body">
  <div class="content-section">
    <!-- 230823 추가 -->
    <div class="content-section__header">
      <h2>
        문제은행<img
              src="/resource/midhigh/img/testbank_2023/beta_i.png"
              alt="베타"
              class="beta-i"
      />
      </h2>
      <p>
        문제출제, 시험지 편집까지! 편리하게 시험지 제작 서비스를 제공합니다.
      </p>
    </div>
    <!-- // 230823 추가 -->
    <div class="columns">
      <div class="data-body">
        <div class="data-details__content">
          <div class="tabs">
            <!-- 중등 고등, 수능, 시험지 보관함 탭 -->
            <ul class="tabs__list tabs__list--3">
              <li class="tabs__item">
                <a
                        href="http://localhost:8080/exambank/booklist"
                        class="tabs__link tabs__link--on"
                >중학</a
                >
              </li>
              <li class="tabs__item">
                <a
                        href="http://localhost:8080/exambank/ExamBank-Storage"
                        class="tabs__link"
                >시험지 보관함</a
                >
              </li>
            </ul>
            <!-- // 중등 고등, 수능, 시험지 보관함 탭 -->