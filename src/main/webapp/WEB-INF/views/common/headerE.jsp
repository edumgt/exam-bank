<%--
  User: 이양진
  Date: 2024-03-08
  Description: 문제은행 서비스 헤더 ('문제은행' 타이틀, 중학, 시험지보관함 탭)
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

        <!-- 과목 카테고리 탭 -->
        <ul class="tabs__list tabs__list--4">
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-ko&amp;testbankYN=Y"
                    class="tabs__link tabs__link--on"
            >국어</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-eng&amp;testbankYN=Y"
                    class="tabs__link"
            >영어</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-math&amp;testbankYN=Y"
                    class="tabs__link"
            >수학</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-society&amp;testbankYN=Y"
                    class="tabs__link"
            >사회</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-history&amp;testbankYN=Y"
                    class="tabs__link"
            >역사</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-morality&amp;testbankYN=Y"
                    class="tabs__link"
            >도덕</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-science&amp;testbankYN=Y"
                    class="tabs__link"
            >과학</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-techNhome&amp;testbankYN="
                    class="tabs__link"
            >기술·가정</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-info&amp;testbankYN="
                    class="tabs__link"
            >정보</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-music&amp;testbankYN="
                    class="tabs__link"
            >음악</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-art&amp;testbankYN="
                    class="tabs__link"
            >미술</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-physical&amp;testbankYN="
                    class="tabs__link"
            >체육</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-select&amp;testbankYN="
                    class="tabs__link"
            >선택</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-cl&amp;testbankYN="
                    class="tabs__link"
            >생활 중국어</a
            >
          </li>
          <li class="tabs__item">
            <a
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-jl&amp;testbankYN="
                    class="tabs__link"
            >생활 일본어</a
            >
          </li>
        </ul>
        <!-- // 과목 카테고리 탭 -->
      </div>