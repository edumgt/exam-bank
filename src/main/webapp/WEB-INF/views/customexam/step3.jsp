<%--
  Created by IntelliJ IDEA.
  User: 권진철
  Date: 2024-03-08
  Time: 오전 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
</head>
<body>
<div id="wrap" class="full-pop-que">
    <div class="full-pop-wrap">


        <div class="pop-header">
            <ul class="title" id="custom-pop-header-title">
                <li style="display:none" id="custom-step0"><img src="../../images/common/ico_step_active.png" alt="">출제 방법 선택</li>
                <li class="" id="custom-step1">STEP 1 단원선택</li>
                <li id="custom-step2">STEP 2 문항 편집</li>
                <li id="custom-step3" class="active">STEP 3 시험지 저장</li>
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
                <div class="view-top">
                    <div class="paper-info">
                        <span>과학2(노태희)</span>- 2015개정 교육과정
                    </div>

                    <div class="btn-wrap">
                        <button class="btn-default" id="reset-btn"><a href="javascript:">처음으로</a></button>
                    </div>

                </div>
                <div class="view-bottom type02 scroll-inner">
                    <div class="top-form">
                        <div class="left-wrap">
                            <span>시험지명</span>
                            <div class="search-wrap">
                                <div class="search-box">
                                    <input type="text" id="paperTitle" placeholder="시험지명을 입력해주세요. (최대 20자)" class="search" maxlength="20" onkeydown="characterCheck(this)" onkeyup="characterCheck(this)">
                                </div>
                            </div>
                        </div>
                        <!--s 230619 저장위치 영역 삭제-->
                        <!-- <div class="right-wrap">
                            <span>저장 위치</span>
                            <div class="select-wrap">
                                <button type="button" class="select-btn">
                                    전체
                                </button>
                                <ul class="select-list">
                                    <li>
                                        <a href="javascript:;">전체</a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">저장소1</a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">저장소2</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="btn-wrap">
                                <button type="button" class="btn-default pop-btn" data-pop="add-folder-pop"><i
                                        class="add-type01"></i>폴더 추가</button>
                            </div>
                        </div> -->
                        <!--e 230619 저장위치 영역 삭제-->
                    </div>
                    <div class="type-form">
                        <div class="left-wrap">
                            <span class="tit">난이도</span>
                            <div class="que-badge-group">
                                <div class="que-badge-wrap" style="display: none">
                                    <span class="que-badge oceanblue">최하</span>
                                    <span class="num"></span>
                                </div>
                                <div class="que-badge-wrap" style="display: none">
                                    <span class="que-badge purple">하</span>
                                    <span class="num"></span>
                                </div>
                                <div class="que-badge-wrap" style="">
                                    <span class="que-badge green">중</span>
                                    <span class="num">15</span>
                                </div>
                                <div class="que-badge-wrap" style="">
                                    <span class="que-badge yellow">상</span>
                                    <span class="num">15</span>
                                </div>
                                <div class="que-badge-wrap" style="display: none">
                                    <span class="que-badge pink">최상</span>
                                    <span class="num"></span>
                                </div>
                            </div>
                        </div>
                        <div class="right-wrap">
                            <span class="tit">문제 형태</span>
                            <div class="que-badge-group">
                                <div class="que-badge-wrap" style="">
                                    <span class="que-badge gray">객관식</span>
                                    <span class="num">25</span>
                                </div>
                                <div class="que-badge-wrap" style="">
                                    <span class="que-badge gray">주관식</span>
                                    <span class="num">5</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-list-type01">
                        <div class="table">
                            <div class="fix-head">
                                <span>번호</span>
                                <span>문제 유형</span>
                                <span>문제 형태</span>
                                <span>난이도</span>
                            </div>
                            <div class="tbody">
                                <div class="scroll-inner">

                                    <div class="col">
                                        <span>1</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;1. 물질의 특성&nbsp;&gt;&nbsp;1. 섞인 것과 섞이지 않은 것&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>2</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;1. 물질의 특성&nbsp;&gt;&nbsp;2. 물질에 따라 끓는점, 녹는점, 어는점이 달라!&nbsp;</span>
                                        <span>


                                                             주관식

                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>3</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;1. 물질의 특성&nbsp;&gt;&nbsp;2. 물질에 따라 끓는점, 녹는점, 어는점이 달라!&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>4</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;1. 물질의 특성&nbsp;&gt;&nbsp;2. 물질에 따라 끓는점, 녹는점, 어는점이 달라!&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>5</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;1. 물질의 특성&nbsp;&gt;&nbsp;3. 물질에 따라 밀도가 달라!&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>6</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;1. 물질의 특성&nbsp;&gt;&nbsp;3. 물질에 따라 밀도가 달라!&nbsp;</span>
                                        <span>


                                                             주관식

                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>7</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;1. 물질의 특성&nbsp;&gt;&nbsp;4. 물질에 따라 용해도가 달라!&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>8</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;1. 물질의 특성&nbsp;&gt;&nbsp;4. 물질에 따라 용해도가 달라!&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>9</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;1. 끓는점 차를 이용한 분리&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>10</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;1. 끓는점 차를 이용한 분리&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>11</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;1. 끓는점 차를 이용한 분리&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>12</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;1. 끓는점 차를 이용한 분리&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>13</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;1. 끓는점 차를 이용한 분리&nbsp;</span>
                                        <span>


                                                             주관식

                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>14</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;2. 밀도 차를 이용한 분리&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>15</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;2. 밀도 차를 이용한 분리&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>16</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;2. 밀도 차를 이용한 분리&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>17</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;3. 재결정과 크로마토그래피&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>18</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;3. 재결정과 크로마토그래피&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>19</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;3. 재결정과 크로마토그래피&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>20</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;3. 재결정과 크로마토그래피&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>21</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;3. 재결정과 크로마토그래피&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>22</span>
                                        <span class="tit">6. 물질의 특성&nbsp;&gt;&nbsp;2. 혼합물의 분리&nbsp;&gt;&nbsp;[실험] 혼합물 분리하기&nbsp;</span>
                                        <span>


                                                             주관식

                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>23</span>
                                        <span class="tit">8. 열과 우리 생활&nbsp;&gt;&nbsp;1. 온도와 열&nbsp;&gt;&nbsp;1. 열을 얻은 물체에 생기는 변화&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>24</span>
                                        <span class="tit">8. 열과 우리 생활&nbsp;&gt;&nbsp;1. 온도와 열&nbsp;&gt;&nbsp;1. 열을 얻은 물체에 생기는 변화&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>25</span>
                                        <span class="tit">8. 열과 우리 생활&nbsp;&gt;&nbsp;1. 온도와 열&nbsp;&gt;&nbsp;2. 열이 들락날락&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>26</span>
                                        <span class="tit">8. 열과 우리 생활&nbsp;&gt;&nbsp;1. 온도와 열&nbsp;&gt;&nbsp;2. 열이 들락날락&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>27</span>
                                        <span class="tit">8. 열과 우리 생활&nbsp;&gt;&nbsp;2. 비열과 열팽창&nbsp;&gt;&nbsp;1. 누가 먼저 뜨거워질까?&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>중</span>
                                    </div>

                                    <div class="col">
                                        <span>28</span>
                                        <span class="tit">8. 열과 우리 생활&nbsp;&gt;&nbsp;2. 비열과 열팽창&nbsp;&gt;&nbsp;1. 누가 먼저 뜨거워질까?&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>29</span>
                                        <span class="tit">8. 열과 우리 생활&nbsp;&gt;&nbsp;2. 비열과 열팽창&nbsp;&gt;&nbsp;2. 열 받으면 팽창한다&nbsp;</span>
                                        <span>

                                                            객관식


                                                    </span>
                                        <span>상</span>
                                    </div>

                                    <div class="col">
                                        <span>30</span>
                                        <span class="tit">8. 열과 우리 생활&nbsp;&gt;&nbsp;2. 비열과 열팽창&nbsp;&gt;&nbsp;2. 열 받으면 팽창한다&nbsp;</span>
                                        <span>


                                                             주관식

                                                    </span>
                                        <span>상</span>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="loading-cnt" style="display:none">
                <img src="../../images/common/loading_icon.gif" alt="로딩중">
                <div class="txt-box">
                    <span class="tit">시험지 저장 중<br>잠시만 기다려주세요.</span>
                    <span class="txt">이 과정은 인터넷 연결상태와 선택한 범위에 따라 <br>수분이 걸릴 수 있습니다.<br><br><em>진행 과정 중에 창을 닫지 마십시오.</em></span>
                </div>
            </div>
        </div>
        <div class="step-btn-wrap">
            <button type="button" class="btn-step" id="step-prev-btn">STEP 2 문항 편집</button>
            <button type="button" class="btn-step next done" id="complete-btn">시험지 저장하기</button>
        </div>
    </div>
</div>

<div class="dim"></div>
<!-- 폴더 추가 팝업 -->
<!-- s 230619 폴더 추가 팝업 삭제-->
<!-- <div class="pop-wrap input-type" data-pop="add-folder-pop">
    <div class="pop-inner">
        <div class="pop-header">
            <span>폴더 추가</span>
            <button type="button" class="pop-close"></button>
        </div>
        <div class="pop-content">
            <span class="tit">폴더명 입력</span>
            <div class="input-box">
                <input type="text" placeholder="폴더명을 입력해주세요.(최대 10글자)">
            </div>
        </div>
        <div class="pop-footer">
            <button type="button">추가하기</button>
        </div>
    </div>
</div> -->
<!-- e 230619 폴더 추가 팝업 삭제-->
<script type="text/javascript" src="../../js/common/common.js?version=20240308101026"></script>
<script>
    const regExp = /[\/?:|*+<>\;\"#%\\]/gi;

    $(function () {
        activeText(3);

        //이전 버튼(STEP2로 이동)
        $("#step-prev-btn").on("click", function () {
            let _form = $('<form></form>');

            _form.attr("name", "new_form");
            _form.attr("charset", "UTF-8");
            _form.attr("method", "post");
            _form.attr("action", '/customExam/step2');

            _form.append($('<input/>', {type: 'hidden', name: 'queArr', value: '1664792,1506466,1664793,1506463,1664798,1664808,1664799,1665537,1665552,1506450,1665539,1665541,1664830,1506453,1665544,1665543,1506454,1664825,1665547,1665546,1665548,1506438,1506589,1506588,1506591,1664899,1664915,1664918,1506604,1506561'}));
            _form.append($('<input/>', {type: 'hidden', name: 'backYn', value: "Y"}));
            _form.append($('<input/>', {type: 'hidden', name: 'paperId', value: ''}));
            _form.append($('<input/>', {type: 'hidden', name: 'paperTitle', value: ''}));
            _form.append($('<input/>', {type: 'hidden', name: 'paperGubun', value: 'new'}));
            _form.append($('<input/>', {type: 'hidden', name: 'subjectId', value: '1175'}));

            _form.appendTo('body');
            _form.submit();
        });

        $("#complete-btn").on("click", function (){
            if($("#paperTitle").val() === ""){
                alert("시험지명을 입력해주세요.");
                return false;

            }else if($("#paperTitle").val().length>20){
                alert("시험지명을 20자 이하로 입력해주세요.");
                return false;
            }

            if(regExp.test($("#paperTitle").val())  == true){
                alert("\'\\ / : * ? \" < > | + # % ; \' 문자는 입력하실 수 없습니다.");
                return false;
            }

            if (confirm ('시험지를 저장하시겠습니까?')) {
                let _textName = '과학2(노태희)'+'-'+'2015개정 교육과정';

                qParam = {};
                qParam.queArr = '1664792,1506466,1664793,1506463,1664798,1664808,1664799,1665537,1665552,1506450,1665539,1665541,1664830,1506453,1665544,1665543,1506454,1664825,1665547,1665546,1665548,1506438,1506589,1506588,1506591,1664899,1664915,1664918,1506604,1506561';
                qParam.paperTitle = encodeURIComponent($("#paperTitle").val());
                qParam.paperGubun = 'new';
                qParam.subjectId = '1175';
                qParam.textName = _textName;
                qParam.areaCode = 'SC';
                qParam.areaName = '과학';

                $.ajax({
                    url: "/customExam/saveStep3",
                    type: "POST",
                    data: qParam,
                    success: function(data) {
                        if(data == null || data.successYn === 'N') {
                            alert("관리자에게 문의해 주시기 바랍니다.");

                        }else if(data.successYn === 'Y') {

                            let _form = $('<form></form>');
                            _form.attr("name", "new_form");
                            _form.attr("charset", "UTF-8");
                            _form.attr("method", "post");
                            _form.attr("action", "/customExam/complete");

                            _form.append($('<input/>', {type: 'hidden', name: 'paperGubun', value:'new'}));
                            _form.append($('<input/>', {type: 'hidden', name: 'subjectId', value: '1175'}));

                            _form.appendTo('body');
                            _form.submit();
                        }/*else if(data.successYn === 'F'){
                                    location.href = "/errorSession";
                                }*/
                    },
                    beforeSend: function() {
                        $(".loading-cnt").css('display', 'block');
                    },
                    error: function(request, status, error) {
                        alert("저장 실패")
                    },
                    complete: function() {
                        $(".loading-cnt").css('display', 'none');
                    }
                });
            }
        });

        //처음으로 버튼
        $("#reset-btn").on("click", function (){
            if (confirm ('처음 화면으로 이동하시겠습니까?\n(출제 방법 선택 화면으로 이동)\n페이지 이동 시 변경사항이 저장되지 않습니다.')) {
                let newForm = $('<form></form>');

                newForm.attr("name", "new_form");
                newForm.attr("charset", "UTF-8");
                newForm.attr("method", "post");
                newForm.attr("action", "/customExam/step0");

                newForm.append($('<input/>', {type: 'hidden', name: 'subjectId', value: '1175'}));

                newForm.appendTo('body');
                newForm.submit();
            }
        });
    })

    // 특수문자 입력 방지
    function characterCheck(obj){
        if( regExp.test(obj.value) ){
            alert("\'\\ / : * ? \" < > | + # % ; \' 문자는 입력하실 수 없습니다.");
            obj.value = obj.value.substring( 0 , obj.value.length - 1 ); // 입력한 특수문자 한자리 지움
        }
    }

</script>

</body>
</html>
