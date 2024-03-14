<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kjw85
  Date: 2024-03-08
  Time: 오전 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>T셀파 문제은행</title>

  <link rel="stylesheet" href="/resource/popup/css/swiper-bundle.min.css">
  <link rel="stylesheet" href="/resource/popup/css/jquery-ui.css">

  <link rel="stylesheet" href="/resource/popup/css/font.css">
  <link rel="stylesheet" href="/resource/popup/css/reset.css">
  <%--    <link rel="stylesheet" href="/resource/midhigh/assets/css/common.css">--%>
  <link rel="stylesheet" href="/resource/popup/css/common.css">
  <!-- S 230808 순서 변경-->
  <script src="/resource/popup/js/jquery-1.12.4.min.js"></script>
  <script src="/resource/popup/js/jquery-3.6.0.min.js"></script>
  <script src="/resource/popup/js/jquery-ui.js"></script>
  <script src="/resource/popup/js/swiper-bundle.min.js"></script>
  <!-- E 230808 순서 변경-->
  <script type="text/javascript" src="/resource/popup/js/common_que.js"></script>
  <script type="text/javascript" src="/resource/popup/js/lodash.min.js"></script>
  <script type="text/javascript" src="/resource/popup/js/stepOne.js"></script>

</head>
<body>
<div id="wrap" class="full-pop-que">
  <div class="full-pop-wrap">


    <div class="pop-header">
      <ul class="title" id="custom-pop-header-title">
        <li style="display:none" id="custom-step0"><img src="../../images/common/ico_step_active.png" alt="">출제 방법 선택</li>
        <li class="active" id="custom-step1">STEP 1 단원선택</li>
        <li id="custom-step2">STEP 2 문항 편집</li>
        <li id="custom-step3">STEP 3 시험지 저장</li>
      </ul>
      <button type="button" class="del-btn" onclick="winClose();"></button>
    </div>

    <script>
      function activeText(step){
        $("#custom-pop-header-title").children().siblings().removeClass("active");
        $("#custom-step"+step).addClass("active");
        if(step === 0){
          $('#custom-step0').show();
          $("#custom-pop-header-title").children().not('#custom-step0').remove();
        }
      }

      function winClose(){
        if (confirm ('이 페이지에서 나가시겠습니까?')) {
          window.open('', '_self', '').close();
        }
      }
    </script>
    <div class="pop-content">
      <div class="view-box">
        <!-- 페이지 상단: 교과서 이름 -->
        <div class="view-top">
          <div class="paper-info">
            <span>영어②(이재영)</span>- 2015개정 교육과정
            <input type="hidden" id="subjectId" name="subjectId" value="1161">
          </div>
        </div>
        <!-- 페이지 상단: 교과서 이름 -->

        <div class="view-bottom">
           <!-- 오른쪽 -->
            <div class="type-box-wrap cursorDefault">
              <div class="type-box scroll-inner">

                <!-- 출제옵션 타이틀 -->
                <div class="title-top">
                  <span>출제옵션</span>
                </div>
                <!-- 출제옵션 타이틀 -->

                <!-- 문제 수 -->
                <div class="box">
                  <div class="title-wrap">
                    <span class="tit-text">문제 수<em>최대 30문제</em></span>
                  </div>
                  <div class="count-area">
                    <div class="btn-wrap" id="btn-num-group">
                      <button type="button" class="btn-line" id="q_10" disabled="disabled">10</button>
                      <button type="button" class="btn-line" id="q_15" disabled="disabled">15</button>
                      <button type="button" class="btn-line" id="q_20" disabled="disabled">20</button>
                      <button type="button" class="btn-line" id="q_25" disabled="disabled">25</button>
                      <button type="button" class="btn-line" id="q_30" disabled="disabled">30</button>
                    </div>
                    <div class="input-area">
                      <span class="num">총 <input type="number" value="" id="txt-exam-num" oninput="questionCountCheck()" data-columns="30" disabled="disabled"> 문제</span>
                      <div class="txt" id="questionCntMessage"></div>
                    </div>
                  </div>
                </div>
                <!-- 문제 수 -->

                <!-- 출처 -->
                <div class="box">
                  <div class="title-wrap">
                    <span class="tit-text">출처</span>
                    <div class="right-area">
                    </div>
                  </div>
                  <div class="btn-wrap multi" id="origin-btn-group">
                    <button type="button" class="btn-line" id="origin_teacher" disabled="disabled">교사용(교사용 DVD, 지도서, 신규 개발 등)</button>
                    <button type="button" class="btn-line disable" disabled="disabled" style="background-color: #fafafa; color: #a4a6ac; border: 1px solid #e0e0e0; cursor: default;">학생용(자습서, 평가문제집 등)</button>
                  </div>
                </div>
                <!-- 출처 -->

                <!-- 평가 영역 -->
                <div class="box">
                  <div class="title-wrap">
                    <span class="tit-text">평가 영역</span>
                    <div class="right-area">
                    </div>
                  </div>
                  <div class="btn-wrap multi" id="category-btn-group">

                    <c:choose>
                      <%-- 존재하지 않을 때에는 평가영역 출력 X --%>
                      <c:when test="${empty evaluationList}">
                        <p>평가영역이 존재하지 않습니다.</p>
                      </c:when>

                      <%-- 1개 이상 존재할 때에는 평가영역 출력 O --%>
                      <c:otherwise>
                        <c:forEach items="${evaluationList}" var="evaluation" varStatus="status">
                          <button type="button" class="btn-line" data-value="${evaluation.domainId}" id="eval_${evaluation.domainId}" disabled="disabled">jy_${evaluation.domainName}</button>
                        </c:forEach>
                      </c:otherwise>
                    </c:choose>
                  </div>
                </div>
                <!-- 평가 영역 -->
            </div>
          </div>
          <!-- 오른쪽 -->
        </div>
      </div>
    </div>


    <!-- 페이지 하단 이동 버튼 -->
    <div class="step-btn-wrap">
      <button type="button" class="btn-step" onclick="moveToStep0()">출제 방법 선택</button>
      <button type="button" class="btn-step next" onclick="moveExamStep2()">STEP2 문항 편집</button>
    </div>
    <!-- 페이지 하단 이동 버튼 -->
  </div>
</div>
<div class="dim"></div>

<!-- 난이도 문제 수 설정 팝업 -->
<div class="pop-wrap range-type" data-pop="que-range-pop">
  <div class="pop-inner">
    <div class="pop-header">
      <span>난이도별 문제 수 설정</span>
      <button type="button" class="pop-close"></button>
    </div>
    <div class="pop-content">
      <span class="txt">문제 수를 입력하여<br> 난이도별 문제 수를 조정하세요.</span>
      <div class="range-wrap" id="pop-range-wrap-set">
        <!-- S: 문제 수 맞지 않을 시 .fail 클래스 추가 -->
        <div class="range color01">
          <span class="color01">최하</span>
          <input type="number" id="pop_level_stap1" min="0">
        </div>
        <div class="range color02">
          <span class="color02">하</span>
          <input type="number" id="pop_level_stap2" min="0">
        </div>
        <div class="range color03">
          <span class="color03">중</span>
          <input type="number" id="pop_level_stap3" min="0">
        </div>
        <div class="range color04">
          <span class="color04">상</span>
          <input type="number" id="pop_level_stap4" min="0">
        </div>
        <div class="range color05">
          <span class="color05">최상</span>
          <input type="number" id="pop_level_stap5" min="0">
        </div>
        <div class="range total fail">
          <span>합계</span>
          <span class="num" id="pop_question_sum">0</span>
        </div>
        <!-- E: 문제 수 맞지 않을 시 .fail 클래스 추가 -->
      </div>
    </div>
    <div class="pop-footer">
      <button onclick="levelCntClear();">초기화</button>
      <button id="range_pop_save" onclick="levelCntSave();">저장</button>
    </div>
  </div>
</div>

<!-- 문항 충족하지 않을 시 노출 팝업 -->
<div class="pop-wrap range-type02" data-pop="que-pop">
  <div class="pop-inner">
    <input type="hidden" id="nxt-data" value="">
    <div class="pop-header">
      <span>문항 구성 자동 변경</span>
      <button type="button" class="pop-close"></button>
    </div>
    <div class="pop-content">
      <span class="txt">사용자가 원하는 문항 구성을 할 수 없어<br>문항 구성이 자동으로 변경되었습니다.</span>
      <div class="range-wrap">
        <div class="range" id="pop-level1" style="display: none">
          <span class="color01">최하</span>
          <span class="num">-</span>
        </div>
        <div class="range" id="pop-level2" style="display: none">
          <span class="color02">하</span>
          <span class="num">-</span>
        </div>
        <div class="range" id="pop-level3" style="display: none">
          <span class="color03">중</span>
          <span class="num">-</span>
        </div>
        <div class="range" id="pop-level4" style="display: none">
          <span class="color04">상</span>
          <span class="num">-</span>
        </div>
        <div class="range" id="pop-level5" style="display: none">
          <span class="color05">최상</span>
          <span class="num">-</span>
        </div>
        <div class="range total" id="pop-total-sum">
          <span>합계</span>
          <span class="num">-</span>
        </div>
      </div>
      <span class="txt">해당 문제 구성으로 출제하시겠습니까?</span>
    </div>
    <div class="pop-footer">
      <button onclick="closePop('que-pop')">취소</button>
      <button class="pop-close" onclick="moveToStep2()">확인</button>
    </div>
  </div>
</div>
<!-- 문항 충족하지 않을 시 노출 팝업 -->

<!-- 문항 0인 경우 노출 팝업 -->
<div class="pop-wrap range-type02" data-pop="no-data-pop">
  <div class="pop-inner">
    <div class="pop-header">
      <span>&nbsp;</span>
      <button type="button" class="pop-close"></button>
    </div>
    <div class="pop-content">
      <span class="txt">사용자가 선택한 단원 정보, 출제 옵션의 총 문항 수가 '0'입니다. </span>
      <span class="txt">단원 선택 추가 및 출제 옵션을 변경해 주세요.</span>
    </div>
    <div class="pop-footer">
      <button class="pop-close" onclick="closePop('que-pop')">확인</button>
    </div>
  </div>
</div>
<!-- 문항 0인 경우 노출 팝업 -->

<script type="text/javascript" src="/resource/js/common.js"></script>
<script type="text/javascript" src="/resource/js/stepOne.js"></script>

</body>
</html>
