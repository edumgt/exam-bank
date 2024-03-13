<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!-- saved from url=(0047)https://testbank.tsherpa.co.kr/customExam/step0 -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>T셀파 문제은행</title>

  <link rel="stylesheet" href="/resource/inc/css/swiper-bundle.min.css">
  <link rel="stylesheet" href="/resource/inc/css/jquery-ui.css">

  <link rel="stylesheet" href="/resource/inc/css/font.css">
  <link rel="stylesheet" href="/resource/inc/css/reset.css">
  <link rel="stylesheet" href="/resource/midhigh/assets/css/common.css">
  <link rel="stylesheet" href="/resource/inc/css/common.css">
  <!-- S 230808 순서 변경-->
  <script src="/resource/inc/js/jquery-1.12.4.min.js"></script>
  <script src="/resource/inc/js/jquery-3.6.0.min.js"></script>
  <script src="/resource/inc/js/jquery-ui.js"></script>
  <script src="/resource/inc/js/swiper-bundle.min.js"></script>
  <!-- E 230808 순서 변경-->
  <script type="text/javascript" src="/resource/inc/js/common_que.js"></script>
  <script type="text/javascript" src="/resource/inc/js/lodash.min.js"></script>
  <script type="text/javascript" src="/resource/popup/js/stepTwo.js"></script>
  <script>
    // $.ajax({
    //     url: "https://sso.chunjae.co.kr:446/api/auth/Validation",
    //     data: { sessionData: "Z9oqux5Fi7d3oS6IczOqyHSFFD1PiwlXPTooBC4wOcQ2XpNH0F4AnzRFqwyBiK153xt/Fq8tuswyTSm1YqIsYw==" },
    //     dataType: 'json',
    //     cache : false,
    //     success: function (data) {
    //         if (data && data.Result) {
    //             let Items = data.Result.Items;
    //             $.ajax({
    //                 url: "https://sso.chunjae.co.kr:446/api/auth/Authorize?Token=" + Items.Token,
    //                 dataType: 'text',
    //                 xhrFields: {
    //                     withCredentials: true
    //                 },
    //                 cache : false,
    //                 success: function (data) {
    //                     let reg = /_ChunjaeSSOEncData = '(.*)';/
    //                     let ssoData = reg.exec(data)[1];
    //                     if (ssoData) {
    //                         $.ajax({
    //                             url: "/user/ssoLogin",
    //                             data: {
    //                                 ssoData: ssoData
    //                             },
    //                             type: "post",
    //                             success: function (res) {}
    //                         })
    //                     } else {
    //                         location.href="/user/ssoLogout";
    //                     }
    //                 }
    //             });
    //         }
    //     }
    // });
  </script>
  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        jax: ["input/TeX","output/SVG"],
        showProcessingMessages: false,
        tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]},
        ignoreClass: "[a-zA-Z1-9]*",
        processClass:'question',
        messageStyle: "none",
        "SVG": {linebreaks: { automatic: true }},
        TeX: {
            Macros: {
            longdiv: ["{\\overline{\\smash{)}#1}}", 1]
            }
        },
        "HTML-CSS": {
            linebreaks: { automatic: true }
       },
        "CommonHTML": { linebreaks: { automatic: true } }
    });
  </script>
  <%--    <script id="MathJax-script" src="./T셀파 문제은행_출제방법_files/tex-mml-chtml.js.다운로드"></script>--%>
  <style type="text/css">.CtxtMenu_InfoClose {  top:.2em; right:.2em;}
  .CtxtMenu_InfoContent {  overflow:auto; text-align:left; font-size:80%;  padding:.4em .6em; border:1px inset; margin:1em 0px;  max-height:20em; max-width:30em; background-color:#EEEEEE;  white-space:normal;}
  .CtxtMenu_Info.CtxtMenu_MousePost {outline:none;}
  .CtxtMenu_Info {  position:fixed; left:50%; width:auto; text-align:center;  border:3px outset; padding:1em 2em; background-color:#DDDDDD;  color:black;  cursor:default; font-family:message-box; font-size:120%;  font-style:normal; text-indent:0; text-transform:none;  line-height:normal; letter-spacing:normal; word-spacing:normal;  word-wrap:normal; white-space:nowrap; float:none; z-index:201;  border-radius: 15px;                     /* Opera 10.5 and IE9 */  -webkit-border-radius:15px;               /* Safari and Chrome */  -moz-border-radius:15px;                  /* Firefox */  -khtml-border-radius:15px;                /* Konqueror */  box-shadow:0px 10px 20px #808080;         /* Opera 10.5 and IE9 */  -webkit-box-shadow:0px 10px 20px #808080; /* Safari 3 & Chrome */  -moz-box-shadow:0px 10px 20px #808080;    /* Forefox 3.5 */  -khtml-box-shadow:0px 10px 20px #808080;  /* Konqueror */  filter:progid:DXImageTransform.Microsoft.dropshadow(OffX=2, OffY=2, Color="gray", Positive="true"); /* IE */}
  </style><style type="text/css">.CtxtMenu_MenuClose {  position:absolute;  cursor:pointer;  display:inline-block;  border:2px solid #AAA;  border-radius:18px;  -webkit-border-radius: 18px;             /* Safari and Chrome */  -moz-border-radius: 18px;                /* Firefox */  -khtml-border-radius: 18px;              /* Konqueror */  font-family: "Courier New", Courier;  font-size:24px;  color:#F0F0F0}
  .CtxtMenu_MenuClose span {  display:block; background-color:#AAA; border:1.5px solid;  border-radius:18px;  -webkit-border-radius: 18px;             /* Safari and Chrome */  -moz-border-radius: 18px;                /* Firefox */  -khtml-border-radius: 18px;              /* Konqueror */  line-height:0;  padding:8px 0 6px     /* may need to be browser-specific */}
  .CtxtMenu_MenuClose:hover {  color:white!important;  border:2px solid #CCC!important}
  .CtxtMenu_MenuClose:hover span {  background-color:#CCC!important}
  .CtxtMenu_MenuClose:hover:focus {  outline:none}
  </style><style type="text/css">.CtxtMenu_Menu {  position:absolute;  background-color:white;  color:black;  width:auto; padding:5px 0px;  border:1px solid #CCCCCC; margin:0; cursor:default;  font: menu; text-align:left; text-indent:0; text-transform:none;  line-height:normal; letter-spacing:normal; word-spacing:normal;  word-wrap:normal; white-space:nowrap; float:none; z-index:201;  border-radius: 5px;                     /* Opera 10.5 and IE9 */  -webkit-border-radius: 5px;             /* Safari and Chrome */  -moz-border-radius: 5px;                /* Firefox */  -khtml-border-radius: 5px;              /* Konqueror */  box-shadow:0px 10px 20px #808080;         /* Opera 10.5 and IE9 */  -webkit-box-shadow:0px 10px 20px #808080; /* Safari 3 & Chrome */  -moz-box-shadow:0px 10px 20px #808080;    /* Forefox 3.5 */  -khtml-box-shadow:0px 10px 20px #808080;  /* Konqueror */}
  .CtxtMenu_MenuItem {  padding: 1px 2em;  background:transparent;}
  .CtxtMenu_MenuArrow {  position:absolute; right:.5em; padding-top:.25em; color:#666666;  font-family: null; font-size: .75em}
  .CtxtMenu_MenuActive .CtxtMenu_MenuArrow {color:white}
  .CtxtMenu_MenuArrow.CtxtMenu_RTL {left:.5em; right:auto}
  .CtxtMenu_MenuCheck {  position:absolute; left:.7em;  font-family: null}
  .CtxtMenu_MenuCheck.CtxtMenu_RTL { right:.7em; left:auto }
  .CtxtMenu_MenuRadioCheck {  position:absolute; left: .7em;}
  .CtxtMenu_MenuRadioCheck.CtxtMenu_RTL {  right: .7em; left:auto}
  .CtxtMenu_MenuInputBox {  padding-left: 1em; right:.5em; color:#666666;  font-family: null;}
  .CtxtMenu_MenuInputBox.CtxtMenu_RTL {  left: .1em;}
  .CtxtMenu_MenuComboBox {  left:.1em; padding-bottom:.5em;}
  .CtxtMenu_MenuSlider {  left: .1em;}
  .CtxtMenu_SliderValue {  position:absolute; right:.1em; padding-top:.25em; color:#333333;  font-size: .75em}
  .CtxtMenu_SliderBar {  outline: none; background: #d3d3d3}
  .CtxtMenu_MenuLabel {  padding: 1px 2em 3px 1.33em;  font-style:italic}
  .CtxtMenu_MenuRule {  border-top: 1px solid #DDDDDD;  margin: 4px 3px;}
  .CtxtMenu_MenuDisabled {  color:GrayText}
  .CtxtMenu_MenuActive {  background-color: #606872;  color: white;}
  .CtxtMenu_MenuDisabled:focus {  background-color: #E8E8E8}
  .CtxtMenu_MenuLabel:focus {  background-color: #E8E8E8}
  .CtxtMenu_ContextMenu:focus {  outline:none}
  .CtxtMenu_ContextMenu .CtxtMenu_MenuItem:focus {  outline:none}
  .CtxtMenu_SelectionMenu {  position:relative; float:left;  border-bottom: none; -webkit-box-shadow:none; -webkit-border-radius:0px; }
  .CtxtMenu_SelectionItem {  padding-right: 1em;}
  .CtxtMenu_Selection {  right: 40%; width:50%; }
  .CtxtMenu_SelectionBox {  padding: 0em; max-height:20em; max-width: none;  background-color:#FFFFFF;}
  .CtxtMenu_SelectionDivider {  clear: both; border-top: 2px solid #000000;}
  .CtxtMenu_Menu .CtxtMenu_MenuClose {  top:-10px; left:-10px}
  </style><style>
    .example-area + .example-area{
      margin-top: 40px;
    }
  </style><style id="MJX-CHTML-styles">
    mjx-container[jax="CHTML"] {
      line-height: 0;
    }

    mjx-container [space="1"] {
      margin-left: .111em;
    }

    mjx-container [space="2"] {
      margin-left: .167em;
    }

    mjx-container [space="3"] {
      margin-left: .222em;
    }

    mjx-container [space="4"] {
      margin-left: .278em;
    }

    mjx-container [space="5"] {
      margin-left: .333em;
    }

    mjx-container [rspace="1"] {
      margin-right: .111em;
    }

    mjx-container [rspace="2"] {
      margin-right: .167em;
    }

    mjx-container [rspace="3"] {
      margin-right: .222em;
    }

    mjx-container [rspace="4"] {
      margin-right: .278em;
    }

    mjx-container [rspace="5"] {
      margin-right: .333em;
    }

    mjx-container [size="s"] {
      font-size: 70.7%;
    }

    mjx-container [size="ss"] {
      font-size: 50%;
    }

    mjx-container [size="Tn"] {
      font-size: 60%;
    }

    mjx-container [size="sm"] {
      font-size: 85%;
    }

    mjx-container [size="lg"] {
      font-size: 120%;
    }

    mjx-container [size="Lg"] {
      font-size: 144%;
    }

    mjx-container [size="LG"] {
      font-size: 173%;
    }

    mjx-container [size="hg"] {
      font-size: 207%;
    }

    mjx-container [size="HG"] {
      font-size: 249%;
    }

    mjx-container [width="full"] {
      width: 100%;
    }

    mjx-box {
      display: inline-block;
    }

    mjx-block {
      display: block;
    }

    mjx-itable {
      display: inline-table;
    }

    mjx-row {
      display: table-row;
    }

    mjx-row > * {
      display: table-cell;
    }

    mjx-mtext {
      display: inline-block;
    }

    mjx-mstyle {
      display: inline-block;
    }

    mjx-merror {
      display: inline-block;
      color: red;
      background-color: yellow;
    }

    mjx-mphantom {
      visibility: hidden;
    }

    _::-webkit-full-page-media, _:future, :root mjx-container {
      will-change: opacity;
    }

    mjx-assistive-mml {
      position: absolute !important;
      top: 0px;
      left: 0px;
      clip: rect(1px, 1px, 1px, 1px);
      padding: 1px 0px 0px 0px !important;
      border: 0px !important;
      display: block !important;
      width: auto !important;
      overflow: hidden !important;
      -webkit-touch-callout: none;
      -webkit-user-select: none;
      -khtml-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    mjx-assistive-mml[display="block"] {
      width: 100% !important;
    }

    mjx-c::before {
      display: block;
      width: 0;
    }

    .MJX-TEX {
      font-family: MJXZERO, MJXTEX;
    }

    .TEX-B {
      font-family: MJXZERO, MJXTEX-B;
    }

    .TEX-I {
      font-family: MJXZERO, MJXTEX-I;
    }

    .TEX-MI {
      font-family: MJXZERO, MJXTEX-MI;
    }

    .TEX-BI {
      font-family: MJXZERO, MJXTEX-BI;
    }

    .TEX-S1 {
      font-family: MJXZERO, MJXTEX-S1;
    }

    .TEX-S2 {
      font-family: MJXZERO, MJXTEX-S2;
    }

    .TEX-S3 {
      font-family: MJXZERO, MJXTEX-S3;
    }

    .TEX-S4 {
      font-family: MJXZERO, MJXTEX-S4;
    }

    .TEX-A {
      font-family: MJXZERO, MJXTEX-A;
    }

    .TEX-C {
      font-family: MJXZERO, MJXTEX-C;
    }

    .TEX-CB {
      font-family: MJXZERO, MJXTEX-CB;
    }

    .TEX-FR {
      font-family: MJXZERO, MJXTEX-FR;
    }

    .TEX-FRB {
      font-family: MJXZERO, MJXTEX-FRB;
    }

    .TEX-SS {
      font-family: MJXZERO, MJXTEX-SS;
    }

    .TEX-SSB {
      font-family: MJXZERO, MJXTEX-SSB;
    }

    .TEX-SSI {
      font-family: MJXZERO, MJXTEX-SSI;
    }

    .TEX-SC {
      font-family: MJXZERO, MJXTEX-SC;
    }

    .TEX-T {
      font-family: MJXZERO, MJXTEX-T;
    }

    .TEX-V {
      font-family: MJXZERO, MJXTEX-V;
    }

    .TEX-VB {
      font-family: MJXZERO, MJXTEX-VB;
    }

    mjx-stretchy-v mjx-c, mjx-stretchy-h mjx-c {
      font-family: MJXZERO, MJXTEX-S1, MJXTEX-S4, MJXTEX, MJXTEX-A ! important;
    }

    @font-face /* 0 */ {
      font-family: MJXZERO;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Zero.woff") format("woff");
    }

    @font-face /* 1 */ {
      font-family: MJXTEX;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Main-Regular.woff") format("woff");
    }

    @font-face /* 2 */ {
      font-family: MJXTEX-B;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Main-Bold.woff") format("woff");
    }

    @font-face /* 3 */ {
      font-family: MJXTEX-I;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Math-Italic.woff") format("woff");
    }

    @font-face /* 4 */ {
      font-family: MJXTEX-MI;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Main-Italic.woff") format("woff");
    }

    @font-face /* 5 */ {
      font-family: MJXTEX-BI;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Math-BoldItalic.woff") format("woff");
    }

    @font-face /* 6 */ {
      font-family: MJXTEX-S1;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Size1-Regular.woff") format("woff");
    }

    @font-face /* 7 */ {
      font-family: MJXTEX-S2;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Size2-Regular.woff") format("woff");
    }

    @font-face /* 8 */ {
      font-family: MJXTEX-S3;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Size3-Regular.woff") format("woff");
    }

    @font-face /* 9 */ {
      font-family: MJXTEX-S4;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Size4-Regular.woff") format("woff");
    }

    @font-face /* 10 */ {
      font-family: MJXTEX-A;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_AMS-Regular.woff") format("woff");
    }

    @font-face /* 11 */ {
      font-family: MJXTEX-C;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Calligraphic-Regular.woff") format("woff");
    }

    @font-face /* 12 */ {
      font-family: MJXTEX-CB;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Calligraphic-Bold.woff") format("woff");
    }

    @font-face /* 13 */ {
      font-family: MJXTEX-FR;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Fraktur-Regular.woff") format("woff");
    }

    @font-face /* 14 */ {
      font-family: MJXTEX-FRB;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Fraktur-Bold.woff") format("woff");
    }

    @font-face /* 15 */ {
      font-family: MJXTEX-SS;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_SansSerif-Regular.woff") format("woff");
    }

    @font-face /* 16 */ {
      font-family: MJXTEX-SSB;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_SansSerif-Bold.woff") format("woff");
    }

    @font-face /* 17 */ {
      font-family: MJXTEX-SSI;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_SansSerif-Italic.woff") format("woff");
    }

    @font-face /* 18 */ {
      font-family: MJXTEX-SC;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Script-Regular.woff") format("woff");
    }

    @font-face /* 19 */ {
      font-family: MJXTEX-T;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Typewriter-Regular.woff") format("woff");
    }

    @font-face /* 20 */ {
      font-family: MJXTEX-V;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Vector-Regular.woff") format("woff");
    }

    @font-face /* 21 */ {
      font-family: MJXTEX-VB;
      src: url("https://testbank.tsherpa.co.kr/js/mathjax3/es5/output/chtml/fonts/woff-v2/MathJax_Vector-Bold.woff") format("woff");
    }
  </style></head>
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
      <button type="button" class="del-btn" onClick="winClose();"></button>
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
        <input type="hidden" id="paperGubun" value="new">
        <input type="hidden" id="subjectId" value="1159">
        <input type="hidden" id="subjectName" value="국어3-2(노미숙)">
        <input type="hidden" id="areaCode" value="KO">
        <input type="hidden" id="backYn" value="">

        <div class="view-top">
          <div class="paper-info">
            <span>국어3-2(노미숙)</span>-2015개정 교육과정
          </div>

          <button class="btn-default btn-research" onclick="rescan()"><i class="research"></i>재검색</button>

          <button class="btn-default" id="btn-range">출제범위</button>
        </div>
        <div class="view-bottom type01">
          <div class="cnt-box">
            <div class="cnt-top">
              <span class="title">문제 목록</span>
              <div class="right-area">
                <div class="select-wrap">
                  <button type="button" class="select-btn" id="select-view-btn" data-select="type1">문제만 보기</button>
                  <ul class="select-list" id="select-view-list">
                    <li>
                      <a href="javascript:void(0);" data-columns="type1">문제만 보기</a>
                    </li>
                    <li>
                      <a href="javascript:void(0);" data-columns="type2">문제+정답 보기</a>
                    </li>
                    <li>
                      <a href="javascript:void(0);" data-columns="type3">문제+정답+해설 보기</a>
                    </li>
                    <li class="disabled">
                      <a href="javascript:;">편집단계에서만 적용되는 보기 옵션</a>
                    </li>
                  </ul>
                </div>
                <div class="select-wrap">
                  <button type="button" class="select-btn" id="select-sort-btn">단원순</button>
                  <ul class="select-list" id="select-sort-list">
                    <li>
                      <a href="javascript:void(0);" data-columns="default">사용자 정렬</a>
                    </li>
                    <li>
                      <a href="javascript:void(0);" data-columns="unit">단원순</a>
                    </li>
                    <li>
                      <a href="javascript:void(0);" data-columns="level">난이도순</a>
                    </li>
                    <li>
                      <a href="javascript:void(0);" data-columns="type">문제 형태순</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>

            <div class="view-que-list scroll-inner" style="display: -webkit-box;-webkit-box-orient:vertical" id="view-que-detail-list">
              <div class="view-que-list no-data" id="no-data-detail-area" style="display:none">
                <p>문항이 없습니다.</p>
              </div>

              <div class="passage-view-que-box sort-group" data-sortNum="0" data-sortValue="">

                <!-- s: 지문 영역 -->
                <div class="view-que-box passage-box" data-passageId="25280">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">

                      <button type="button" class="btn-delete" data-type="all"></button>

                    </div>
                  </div>
                  <div class="view-que">

                    <div class="que-bottom">
                      <div class="passage-area">
                        <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/passage/25280/25280_2024-02-21.svg" alt="25280" width="453px">
                      </div>
                      <div class="btn-wrap etc-btn-wrap" style="margin-top: 10px;">
                      </div>
                    </div>
                  </div>
                </div>
                <!-- e: 지문 영역-->


                <!-- s: 문항 영역 -->

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="521713">
                        <input type="hidden" id="chapterGp" value="115901115901011159010101115901010102">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521713/521713_2024-02-21.svg" alt="521713" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521713/521713_2024-02-21.svg" alt="521713" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521713/521713_2024-02-21.svg" alt="521713" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 내용">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 내용</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="521714">
                        <input type="hidden" id="chapterGp" value="115901115901011159010101115901010105">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521714/521714_2023-10-13.svg" alt="521714" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521714/521714_2023-10-13.svg" alt="521714" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521714/521714_2023-10-13.svg" alt="521714" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 특징">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 특징</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="521716">
                        <input type="hidden" id="chapterGp" value="115901115901011159010101115901010106">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521716/521716_2024-02-21.svg" alt="521716" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521716/521716_2024-02-21.svg" alt="521716" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521716/521716_2024-02-21.svg" alt="521716" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 해석">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 해석</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="521718">
                        <input type="hidden" id="chapterGp" value="115901115901011159010101115901010104">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521718/521718_2023-10-13.svg" alt="521718" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521718/521718_2023-10-13.svg" alt="521718" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521718/521718_2023-10-13.svg" alt="521718" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 감상">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 감상</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">




                        <span class="que-badge yellow">상</span>


                        <span class="que-badge gray">


                                                                    주관식

                                                                </span>
                        <input type="hidden" id="questionId" value="521720">
                        <input type="hidden" id="chapterGp" value="115901115901011159010101115901010104">
                        <input type="hidden" id="difficultyCode" value="04">
                        <input type="hidden" id="questionFormCode" value="85">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521720/521720_2023-10-13.svg" alt="521720" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521720/521720_2023-10-13.svg" alt="521720" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521720/521720_2023-10-13.svg" alt="521720" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 감상">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 감상</p>
                  </div>
                </div>

                <!-- e: 문항 영역 -->
              </div>

              <div class="passage-view-que-box sort-group" data-sortNum="1" data-sortValue="">

                <!-- s: 지문 영역 -->
                <div class="view-que-box passage-box" data-passageId="23936">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">

                      <button type="button" class="btn-delete" data-type="all"></button>

                    </div>
                  </div>
                  <div class="view-que">

                    <div class="que-bottom">
                      <div class="passage-area">
                        <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/passage/23936/23936_2023-12-19.svg" alt="23936" width="453px">
                      </div>
                      <div class="btn-wrap etc-btn-wrap" style="margin-top: 10px;">
                      </div>
                    </div>
                  </div>
                </div>
                <!-- e: 지문 영역-->


                <!-- s: 문항 영역 -->

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="491990">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020109">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/491990/491990_2023-10-11.svg" alt="491990" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/491990/491990_2023-10-11.svg" alt="491990" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/491990/491990_2023-10-11.svg" alt="491990" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="491991">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020102">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/491991/491991_2023-10-11.svg" alt="491991" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/491991/491991_2023-10-11.svg" alt="491991" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/491991/491991_2023-10-11.svg" alt="491991" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 내용">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 내용</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">




                        <span class="que-badge yellow">상</span>


                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="491989">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020105">
                        <input type="hidden" id="difficultyCode" value="04">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/491989/491989_2023-10-11.svg" alt="491989" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/491989/491989_2023-10-11.svg" alt="491989" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/491989/491989_2023-10-11.svg" alt="491989" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 특징">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 특징</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">




                        <span class="que-badge yellow">상</span>


                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="491992">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020105">
                        <input type="hidden" id="difficultyCode" value="04">
                        <input type="hidden" id="questionFormCode" value="10">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/491992/491992_2023-10-11.svg" alt="491992" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/491992/491992_2023-10-11.svg" alt="491992" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/491992/491992_2023-10-11.svg" alt="491992" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 특징">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 특징</p>
                  </div>
                </div>

                <!-- e: 문항 영역 -->
              </div>

              <div class="passage-view-que-box sort-group" data-sortNum="2" data-sortValue="">

                <!-- s: 지문 영역 -->
                <div class="view-que-box passage-box" data-passageId="23937">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">

                      <button type="button" class="btn-delete" data-type="all"></button>

                    </div>
                  </div>
                  <div class="view-que">

                    <div class="que-bottom">
                      <div class="passage-area">
                        <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/passage/23937/23937_2023-12-19.svg" alt="23937" width="453px">
                      </div>
                      <div class="btn-wrap etc-btn-wrap" style="margin-top: 10px;">
                      </div>
                    </div>
                  </div>
                </div>
                <!-- e: 지문 영역-->


                <!-- s: 문항 영역 -->

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="491993">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020101">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/491993/491993_2023-10-11.svg" alt="491993" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/491993/491993_2023-10-11.svg" alt="491993" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/491993/491993_2023-10-11.svg" alt="491993" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 말하는 이">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 말하는 이</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="491994">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020109">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/491994/491994_2023-10-11.svg" alt="491994" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/491994/491994_2023-10-11.svg" alt="491994" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/491994/491994_2023-10-11.svg" alt="491994" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">


                                                                    주관식

                                                                </span>
                        <input type="hidden" id="questionId" value="491995">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020108">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="85">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/491995/491995_2023-10-11.svg" alt="491995" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/491995/491995_2023-10-11.svg" alt="491995" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/491995/491995_2023-10-11.svg" alt="491995" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 표현 방법">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 표현 방법</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">


                                                                    주관식

                                                                </span>
                        <input type="hidden" id="questionId" value="491996">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020109">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="85">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/491996/491996_2023-10-11.svg" alt="491996" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/491996/491996_2023-10-11.svg" alt="491996" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/491996/491996_2023-10-11.svg" alt="491996" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경</p>
                  </div>
                </div>

                <!-- e: 문항 영역 -->
              </div>

              <div class="passage-view-que-box sort-group" data-sortNum="3" data-sortValue="">

                <!-- s: 지문 영역 -->
                <div class="view-que-box passage-box" data-passageId="23940">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">

                      <button type="button" class="btn-delete" data-type="all"></button>

                    </div>
                  </div>
                  <div class="view-que">

                    <div class="que-bottom">
                      <div class="passage-area">
                        <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/passage/23940/23940_2023-12-19.svg" alt="23940" width="453px">
                      </div>
                      <div class="btn-wrap etc-btn-wrap" style="margin-top: 10px;">
                      </div>
                    </div>
                  </div>
                </div>
                <!-- e: 지문 영역-->


                <!-- s: 문항 영역 -->

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">


                        <span class="que-badge purple">하</span>




                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="492007">
                        <input type="hidden" id="chapterGp" value="1159011159010211590102021159010202015">
                        <input type="hidden" id="difficultyCode" value="02">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/492007/492007_2023-10-11.svg" alt="492007" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/492007/492007_2023-10-11.svg" alt="492007" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/492007/492007_2023-10-11.svg" alt="492007" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품 창작의 배경">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품 창작의 배경</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">


                        <span class="que-badge purple">하</span>




                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="492008">
                        <input type="hidden" id="chapterGp" value="1159011159010211590102021159010202012">
                        <input type="hidden" id="difficultyCode" value="02">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/492008/492008_2023-10-11.svg" alt="492008" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/492008/492008_2023-10-11.svg" alt="492008" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/492008/492008_2023-10-11.svg" alt="492008" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 등장인물">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 등장인물</p>
                  </div>
                </div>

                <!-- e: 문항 영역 -->
              </div>

              <div class="passage-view-que-box sort-group" data-sortNum="4" data-sortValue="">

                <!-- s: 지문 영역 -->
                <div class="view-que-box passage-box" data-passageId="25281">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">

                      <button type="button" class="btn-delete" data-type="all"></button>

                    </div>
                  </div>
                  <div class="view-que">

                    <div class="que-bottom">
                      <div class="passage-area">
                        <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/passage/25281/25281_2024-02-21.svg" alt="25281" width="453px">
                      </div>
                      <div class="btn-wrap etc-btn-wrap" style="margin-top: 10px;">
                      </div>
                    </div>
                  </div>
                </div>
                <!-- e: 지문 영역-->


                <!-- s: 문항 영역 -->

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="521798">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020108">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521798/521798_2024-02-21.svg" alt="521798" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521798/521798_2024-02-21.svg" alt="521798" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521798/521798_2024-02-21.svg" alt="521798" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 표현 방법">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 표현 방법</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="521800">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020101">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521800/521800_2023-10-13.svg" alt="521800" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521800/521800_2023-10-13.svg" alt="521800" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521800/521800_2023-10-13.svg" alt="521800" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 말하는 이">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 말하는 이</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="521802">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020108">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521802/521802_2023-10-13.svg" alt="521802" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521802/521802_2023-10-13.svg" alt="521802" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521802/521802_2023-10-13.svg" alt="521802" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 표현 방법">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 표현 방법</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="521805">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020106">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521805/521805_2023-10-13.svg" alt="521805" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521805/521805_2023-10-13.svg" alt="521805" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521805/521805_2023-10-13.svg" alt="521805" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 해석">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 해석</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="521807">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020101">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521807/521807_2024-02-21.svg" alt="521807" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521807/521807_2024-02-21.svg" alt="521807" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521807/521807_2024-02-21.svg" alt="521807" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 말하는 이">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 말하는 이</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="521808">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020103">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521808/521808_2023-10-13.svg" alt="521808" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521808/521808_2023-10-13.svg" alt="521808" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521808/521808_2023-10-13.svg" alt="521808" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 창작 의도">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 창작 의도</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">




                        <span class="que-badge yellow">상</span>


                        <span class="que-badge gray">


                                                                    주관식

                                                                </span>
                        <input type="hidden" id="questionId" value="521804">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020109">
                        <input type="hidden" id="difficultyCode" value="04">
                        <input type="hidden" id="questionFormCode" value="85">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521804/521804_2023-10-13.svg" alt="521804" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521804/521804_2023-10-13.svg" alt="521804" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521804/521804_2023-10-13.svg" alt="521804" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">




                        <span class="que-badge yellow">상</span>


                        <span class="que-badge gray">


                                                                    주관식

                                                                </span>
                        <input type="hidden" id="questionId" value="521810">
                        <input type="hidden" id="chapterGp" value="115901115901021159010201115901020106">
                        <input type="hidden" id="difficultyCode" value="04">
                        <input type="hidden" id="questionFormCode" value="85">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521810/521810_2023-10-13.svg" alt="521810" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521810/521810_2023-10-13.svg" alt="521810" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521810/521810_2023-10-13.svg" alt="521810" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 해석">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 해석</p>
                  </div>
                </div>

                <!-- e: 문항 영역 -->
              </div>

              <div class="passage-view-que-box sort-group" data-sortNum="5" data-sortValue="">

                <!-- s: 지문 영역 -->
                <div class="view-que-box passage-box" data-passageId="23938">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">

                      <button type="button" class="btn-delete" data-type="all"></button>

                    </div>
                  </div>
                  <div class="view-que">

                    <div class="que-bottom">
                      <div class="passage-area">
                        <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/passage/23938/23938_2024-02-21.svg" alt="23938" width="453px">
                      </div>
                      <div class="btn-wrap etc-btn-wrap" style="margin-top: 10px;">
                      </div>
                    </div>
                  </div>
                </div>
                <!-- e: 지문 영역-->


                <!-- s: 문항 영역 -->

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="491997">
                        <input type="hidden" id="chapterGp" value="1159011159010211590102021159010202001">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/491997/491997_2024-02-21.svg" alt="491997" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/491997/491997_2024-02-21.svg" alt="491997" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/491997/491997_2024-02-21.svg" alt="491997" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 구조">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 구조</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">


                                                                    주관식

                                                                </span>
                        <input type="hidden" id="questionId" value="491999">
                        <input type="hidden" id="chapterGp" value="1159011159010211590102021159010202004">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="60">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/491999/491999_2023-10-11.svg" alt="491999" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/491999/491999_2023-10-11.svg" alt="491999" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/491999/491999_2023-10-11.svg" alt="491999" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 내용">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 내용</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">


                                                                    주관식

                                                                </span>
                        <input type="hidden" id="questionId" value="492000">
                        <input type="hidden" id="chapterGp" value="1159011159010211590102021159010202004">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="60">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/492000/492000_2023-10-11.svg" alt="492000" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/492000/492000_2023-10-11.svg" alt="492000" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/492000/492000_2023-10-11.svg" alt="492000" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 내용">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 내용</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="492001">
                        <input type="hidden" id="chapterGp" value="1159011159010211590102021159010202004">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/492001/492001_2023-10-11.svg" alt="492001" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/492001/492001_2023-10-11.svg" alt="492001" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/492001/492001_2023-10-11.svg" alt="492001" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 내용">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 내용</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">




                        <span class="que-badge yellow">상</span>


                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="491998">
                        <input type="hidden" id="chapterGp" value="1159011159010211590102021159010202005">
                        <input type="hidden" id="difficultyCode" value="04">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/491998/491998_2023-10-11.svg" alt="491998" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/491998/491998_2023-10-11.svg" alt="491998" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/491998/491998_2023-10-11.svg" alt="491998" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;어휘의 의미">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;어휘의 의미</p>
                  </div>
                </div>

                <!-- e: 문항 영역 -->
              </div>

              <div class="passage-view-que-box sort-group" data-sortNum="6" data-sortValue="">

                <!-- s: 지문 영역 -->
                <div class="view-que-box passage-box" data-passageId="25266">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">

                      <button type="button" class="btn-delete" data-type="all"></button>

                    </div>
                  </div>
                  <div class="view-que">

                    <div class="que-bottom">
                      <div class="passage-area">
                        <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/passage/25266/25266_2023-12-19.svg" alt="25266" width="453px">
                      </div>
                      <div class="btn-wrap etc-btn-wrap" style="margin-top: 10px;">
                      </div>
                    </div>
                  </div>
                </div>
                <!-- e: 지문 영역-->


                <!-- s: 문항 영역 -->

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">



                        <span class="que-badge green">중</span>



                        <span class="que-badge gray">

                                                                    객관식


                                                                </span>
                        <input type="hidden" id="questionId" value="521061">
                        <input type="hidden" id="chapterGp" value="115901115901011159010101115901010108">
                        <input type="hidden" id="difficultyCode" value="03">
                        <input type="hidden" id="questionFormCode" value="50">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521061/521061_2023-10-13.svg" alt="521061" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521061/521061_2023-10-13.svg" alt="521061" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521061/521061_2023-10-13.svg" alt="521061" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 표현 방법">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 표현 방법</p>
                  </div>
                </div>

                <div class="view-que-box item-box" data-paperTitle="">
                  <div class="que-top">
                    <div class="title">
                      <span class="num"></span>
                      <div class="que-badge-group">




                        <span class="que-badge yellow">상</span>


                        <span class="que-badge gray">


                                                                    주관식

                                                                </span>
                        <input type="hidden" id="questionId" value="521063">
                        <input type="hidden" id="chapterGp" value="115901115901011159010101115901010106">
                        <input type="hidden" id="difficultyCode" value="04">
                        <input type="hidden" id="questionFormCode" value="60">
                        <input type="hidden" id="paperId" value="">
                        <input type="hidden" id="paperTitle" value="">
                      </div>
                    </div>
                    <div class="btn-wrap delete-btn-wrap">
                                                            <span class="tooltip-wrap">
                                                                <button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
                                                                <span class="tooltip type02">
                                                                    <div class="tool-type01">문항오류신고</div>
                                                                </span>
                                                            </span>
                      <button type="button" class="btn-delete"></button>
                    </div>
                  </div>
                  <div class="view-que">
                    <div class="que-content">
                      <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/question/521063/521063_2023-10-13.svg" alt="521063" width="453px" >
                    </div>
                    <div class="que-bottom">
                      <div class="data-area">
                        <div class="que-info answer-area" style="display: none">
                          <p class="answer"><span class="label type01">정답</span></p>
                          <div class="data-answer-area"><img src="https://img.chunjae-platform.com/upload/capture/tsherpa/answer/521063/521063_2023-10-13.svg" alt="521063" width="453px"></div>
                        </div>

                      </div>
                      <div class="data-area type01">
                        <div class="que-info explain-area" style="display: none">
                          <p class="answer"><span class="label">해설</span></p>
                          <div class="data-answer-area"> <img src="https://img.chunjae-platform.com/upload/capture/tsherpa/explain/521063/521063_2023-10-13.svg" alt="521063" width="453px"></div>
                        </div>
                        <div class="btn-wrap etc-btn-wrap">
                          <button type="button" class="btn-similar-que btn-default"><i class="similar"></i>유사 문제</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="que-info-last" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 해석">
                    <p class="chapter">1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 해석</p>
                  </div>
                </div>

                <!-- e: 문항 영역 -->
              </div>

            </div>

            <div class="bottom-box">
              <div class="que-badge-group type01">
                <div class="que-badge-wrap" id="badge-level-1" style="display: none">
                  <span class="que-badge oceanblue">최하</span>
                  <span class="num" id="level-1"></span>
                </div>
                <div class="que-badge-wrap" id="badge-level-2" style="">
                  <span class="que-badge purple">하</span>
                  <span class="num" id="level-2">2</span>
                </div>
                <div class="que-badge-wrap" id="badge-level-3" style="">
                  <span class="que-badge green">중</span>
                  <span class="num" id="level-3">21</span>
                </div>
                <div class="que-badge-wrap" id="badge-level-4" style="">
                  <span class="que-badge yellow">상</span>
                  <span class="num" id="level-4">7</span>
                </div>
                <div class="que-badge-wrap" id="badge-level-5" style="display: none">
                  <span class="que-badge pink">최상</span>
                  <span class="num" id="level-5"></span>
                </div>
              </div>
              <p class="total-num">총 <span>30</span>문제</p>
            </div>
          </div>
          <div class="cnt-box type03" id="tab-box">
            <div class="tab-wrap">
              <ul class="tab-menu-type01" id="tab-right-group">
                <li class="ui-tab-btn active" id="tab-summary">
                  <a href="javascript:">문제지 요약</a>
                </li>
                <li class="ui-tab-btn" id="tab-similar">
                  <a href="javascript:">유사 문제</a>
                </li>
                <li class="ui-tab-btn" id="tab-delete">
                  <a href="javascript:">삭제 문항</a>
                </li>
              </ul>

              <!--s:문제지 요약-->
              <div class="contents on" id="content-summary-area">
                <div class="table half-type ">
                  <div class="fix-head">
                    <span>이동</span>
                    <span>번호</span>
                    <span>문제 유형</span>
                    <span>문제 형태</span>
                    <span>난이도</span>
                  </div>
                  <div class="tbody">
                    <div class="scroll-inner">
                      <div class="test ui-sortable" id="table-1">



                        <!-- s: 지문 묶음 영역 -->
                        <div class="depth-01 summary-box" data-sortSummary="0">
                          <div class="dragHandle ui-sortable-handle drag-type02"><img src="/images/common/ico_move_type01.png" alt=""></div>
                          <div class="col-group passage-table">

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 내용">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;> 작품의 내용
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 특징">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;> 작품의 특징
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 해석">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;> 작품의 해석
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 감상">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;> 작품의 감상
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 감상">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;> 작품의 감상
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>


                                                                                                주관식

                                                                                        </span>
                                <span><span class="que-badge">상</span></span>
                              </a>
                            </div>

                          </div>
                        </div>
                        <!-- e : 지문 묶음 영역-->






                        <!-- s: 지문 묶음 영역 -->
                        <div class="depth-01 summary-box" data-sortSummary="1">
                          <div class="dragHandle ui-sortable-handle drag-type02"><img src="/images/common/ico_move_type01.png" alt=""></div>
                          <div class="col-group passage-table">

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 배경
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 내용">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 내용
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 특징">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 특징
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">상</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 특징">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 특징
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">상</span></span>
                              </a>
                            </div>

                          </div>
                        </div>
                        <!-- e : 지문 묶음 영역-->






                        <!-- s: 지문 묶음 영역 -->
                        <div class="depth-01 summary-box" data-sortSummary="2">
                          <div class="dragHandle ui-sortable-handle drag-type02"><img src="/images/common/ico_move_type01.png" alt=""></div>
                          <div class="col-group passage-table">

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 말하는 이">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 말하는 이
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 배경
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 표현 방법">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 표현 방법
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>


                                                                                                주관식

                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 배경
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>


                                                                                                주관식

                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                          </div>
                        </div>
                        <!-- e : 지문 묶음 영역-->






                        <!-- s: 지문 묶음 영역 -->
                        <div class="depth-01 summary-box" data-sortSummary="3">
                          <div class="dragHandle ui-sortable-handle drag-type02"><img src="/images/common/ico_move_type01.png" alt=""></div>
                          <div class="col-group passage-table">

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품 창작의 배경">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;> 작품 창작의 배경
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">하</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 등장인물">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;> 작품의 등장인물
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">하</span></span>
                              </a>
                            </div>

                          </div>
                        </div>
                        <!-- e : 지문 묶음 영역-->






                        <!-- s: 지문 묶음 영역 -->
                        <div class="depth-01 summary-box" data-sortSummary="4">
                          <div class="dragHandle ui-sortable-handle drag-type02"><img src="/images/common/ico_move_type01.png" alt=""></div>
                          <div class="col-group passage-table">

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 표현 방법">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 표현 방법
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 말하는 이">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 말하는 이
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 표현 방법">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 표현 방법
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 해석">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 해석
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 말하는 이">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 말하는 이
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 창작 의도">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 창작 의도
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 배경">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 배경
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>


                                                                                                주관식

                                                                                        </span>
                                <span><span class="que-badge">상</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;>&nbsp;작품의 해석">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;가난한 사랑 노래&nbsp;> 작품의 해석
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>


                                                                                                주관식

                                                                                        </span>
                                <span><span class="que-badge">상</span></span>
                              </a>
                            </div>

                          </div>
                        </div>
                        <!-- e : 지문 묶음 영역-->






                        <!-- s: 지문 묶음 영역 -->
                        <div class="depth-01 summary-box" data-sortSummary="5">
                          <div class="dragHandle ui-sortable-handle drag-type02"><img src="/images/common/ico_move_type01.png" alt=""></div>
                          <div class="col-group passage-table">

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 구조">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;> 작품의 구조
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 내용">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;> 작품의 내용
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>


                                                                                                주관식

                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 내용">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;> 작품의 내용
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>


                                                                                                주관식

                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;작품의 내용">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;> 작품의 내용
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;>&nbsp;어휘의 의미">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(2) 문학, 시대의 거울&nbsp;>&nbsp;기억 속의 들꽃&nbsp;> 어휘의 의미
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">상</span></span>
                              </a>
                            </div>

                          </div>
                        </div>
                        <!-- e : 지문 묶음 영역-->






                        <!-- s: 지문 묶음 영역 -->
                        <div class="depth-01 summary-box" data-sortSummary="6">
                          <div class="dragHandle ui-sortable-handle drag-type02"><img src="/images/common/ico_move_type01.png" alt=""></div>
                          <div class="col-group passage-table">

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 표현 방법">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;> 작품의 표현 방법
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>

                                                                                                객관식


                                                                                        </span>
                                <span><span class="que-badge">중</span></span>
                              </a>
                            </div>

                            <div class="col depth-02 que">
                              <a href="javascript:">


                                <span class="dragHandle ui-sortable-handle drag-type01"><img src="/images/common/ico_move_type02.png" alt=""></span>



                                <span class="summary-num"></span>
                                <span class="tit">
                                                                                            <div class="txt" title="1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;>&nbsp;작품의 해석">
                                                                                                    1. 문학의 샘&nbsp;>&nbsp;(1) 문학의 다양한 해석&nbsp;>&nbsp;청포도&nbsp;> 작품의 해석
                                                                                            </div>
                                                                                            <div class="tooltip-wrap">

                                                                                            </div>
                                                                                        </span>
                                <span>


                                                                                                주관식

                                                                                        </span>
                                <span><span class="que-badge">상</span></span>
                              </a>
                            </div>

                          </div>
                        </div>
                        <!-- e : 지문 묶음 영역-->




                      </div>
                    </div>
                  </div>
                </div>
                <div class="bottom-box">
                  <div class="que-badge-group">
                    <div class="que-badge-wrap" id="badge-form-multiple" style="">
                      <span class="que-badge gray">객관식</span>
                      <span class="num" id="num-multiple">22</span>
                    </div>
                    <div class="que-badge-wrap" id="badge-form-subjective" style="">
                      <span class="que-badge gray">주관식</span>
                      <span class="num" id="num-subjective">8</span>
                    </div>
                  </div>
                </div>
              </div>
              <!--e:문제지 요약-->


              <div class="contents" id="contents-similar-area">
                <div class="view-que-list no-data" id="init-similar-area" style="display: none">
                  <p>
                    문제 목록에서 <i class="ic-no-data"></i> 유사문제 버튼을 선택해주세요.
                  </p>
                </div>
                <div id="list-similar-area" style="display: none">
                  <div class="cnt-top">
                    <span class="title" id="similar-title">2번 유사 문제</span>
                    <input type="hidden" id="target-sort-num" value="">
                    <input type="hidden" id="target-lastItem-num" value="">
                    <div class="right-area">
                      <div class="select-wrap">
                        <button type="button" class="select-btn" id="similar-level-btn" value="">난이도 전체</button>
                        <ul class="select-list" id="similar-level-list">
                          <li>
                            <a href="javascript:void(0);" data-columns="">난이도 전체</a>
                          </li>
                          <li>
                            <a href="javascript:void(0);" data-columns="05">최상</a>
                          </li>
                          <li>
                            <a href="javascript:void(0);" data-columns="04">상</a>
                          </li>
                          <li>
                            <a href="javascript:void(0);" data-columns="03">중</a>
                          </li>
                          <li>
                            <a href="javascript:void(0);" data-columns="02">하</a>
                          </li>
                          <li>
                            <a href="javascript:void(0);" data-columns="01">최하</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="view-que-list scroll-inner" id="item-similar-area"></div>
                </div>
              </div>



              <div class="contents" id="contents-delete-area">
                <div class="view-que-list no-data" id="init-delete-area" style="">
                  <p>삭제한 문항이 없습니다.</p>
                </div>
                <div class="view-que-list scroll-inner" id="item-delete-area" style="display:none "></div>
              </div>


            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="step-btn-wrap">

      <button type="button" class="btn-step" id="step-prev-btn">STEP 1 단원 선택</button>


      <button type="button" class="btn-step next" id="step-3-btn">STEP 3 시험지 저장</button>
    </div>
  </div>
</div>

<div class="dim"></div>

<!-- 문항 오류 신고 팝업 -->
<div class="pop-wrap table-type" data-pop="error-report-pop" id="pop-error-report">
  <div class="pop-inner">
    <div class="pop-header">
      <span>문항 오류 신고</span>
      <button type="button" class="pop-close"></button>
    </div>
    <div class="pop-content">
      <form id="error-report-form" method="post" enctype="multipart/form-data">
        <table>
          <colgroup>
            <col width="30%">
            <col width="*">
          </colgroup>
          <tbody>
          <tr>
            <th>오류유형</th>
            <td>
              <div class="select-wrap">
                <input type="hidden" id="hidden-type" name="type" value="q_error">
                <button type="button" class="select-btn" id="btn-select-error">문제오류</button>
                <ul class="select-list" id="select-error-list">

                  <li id="q_error">
                    <a>문제오류</a>
                  </li>

                  <li id="a_error">
                    <a>정답오류</a>
                  </li>

                  <li id="e_error">
                    <a>풀이오류</a>
                  </li>

                  <li id="i_error">
                    <a>이미지오류</a>
                  </li>

                  <li id="p_type_error">
                    <a>유형오류</a>
                  </li>

                  <li id="etc_error">
                    <a>기타</a>
                  </li>

                </ul>
              </div>
            </td>
          </tr>
          <tr>
            <th>첨부파일</th>
            <td class="file">
              <input type="file" id="file-error" name="file" onchange="changeFile(this)" accept=".jpg,.jpeg, .png, .hwp">
              <input type="text" id="error-file-name" placeholder="최대 100MB까지 등록가능" disabled>
              <button type="button" class="btn-icon" id="btn-upload-error">파일 첨부</button>
            </td>
          </tr>
          <tr>
            <th>오류 내용</th>
            <td>
              <textarea name="content" id="txt-error-area" cols="30" rows="8" placeholder="오류내용을 간단히 적어주세요.&#13;&#10;(최대 200자)"></textarea>
              <input type="hidden" id="question-id-error" name="questionId">
            </td>
          </tr>
          </tbody>
        </table>
      </form>
    </div>
    <div class="pop-footer">
      <button type="button" id="btn-report-error">신고하기</button>
    </div>
  </div>
</div>

<!-- 재검색 팝업 -->
<div class="pop-wrap range-type02" data-pop="que-pop">
  <div class="pop-inner">
    <input type="hidden" id="nxt-data" value>
    <div class="pop-header">
      <span>문항 재검색</span>
      <button type="button" class="pop-close"></button>
    </div>
    <div class="pop-content">
      <span class="txt">문항 구성이 자동으로 변경됩니다.</span>

      <div class="range-wrap">
        <div class="range" id="pop-level1" style="display: none">
          <span class="color01">최하</span>
          <span class="num">2</span>
        </div>
        <div class="range" id="pop-level2" style="display: none">
          <span class="color02">하</span>
          <span class="num">5</span>
        </div>
        <div class="range" id="pop-level3" style="display: none">
          <span class="color03">중</span>
          <span class="num">6</span>
        </div>
        <div class="range" id="pop-level4" style="display: none">
          <span class="color04">상</span>
          <span class="num">5</span>
        </div>
        <div class="range" id="pop-level5" style="display: none">
          <span class="color05">최상</span>
          <span class="num">2</span>
        </div>
        <div class="range total" id="pop-total-sum">
          <span>합계</span>
          <span class="num">20</span>
        </div>
      </div>
      <span class="txt">해당 문제 구성으로 재검색하시겠습니까?</span>
    </div>
    <div class="pop-footer">
      <button onclick="closePop('que-pop')">취소</button>
      <button class="pop-close" onclick="moveToStep2()">확인</button>
    </div>
  </div>
</div>

<!-- 출제범위 팝업 -->
<div class="pop-wrap scope-type" data-pop="que-scope-pop">
  <div class="pop-inner">
    <div class="pop-header">
      <span>국어3-2(노미숙)</span>
      <button type="button" class="pop-close"></button>
    </div>
    <div class="pop-content scroll-inner">
      <div class="scope-wrap" id="scope-list">
      </div>
    </div>
  </div>
</div>

<script type="text/javascript" src="../../js/common/common.js?version=20240307203939"></script>
<script type="text/javascript" src="../../js/customExam/stepTwo.js?version=20240307203939"></script>
<script>
  let qParam ={};

  // 재검색
  function rescan(){
    qParam = {};
    const chapterList =  '[{"subject":"1159","topic":115901010101,"small":1159010101,"medium":11590101,"large":115901},{"subject":"1159","topic":115901010102,"small":1159010101,"medium":11590101,"large":115901},{"subject":"1159","topic":115901010103,"small":1159010101,"medium":11590101,"large":115901},{"subject":"1159","topic":115901010104,"small":1159010101,"medium":11590101,"large":115901},{"subject":"1159","topic":115901010105,"small":1159010101,"medium":11590101,"large":115901},{"subject":"1159","topic":115901010106,"small":1159010101,"medium":11590101,"large":115901},{"subject":"1159","topic":115901010107,"small":1159010101,"medium":11590101,"large":115901},{"subject":"1159","topic":115901010108,"small":1159010101,"medium":11590101,"large":115901},{"subject":"1159","topic":115901010109,"small":1159010101,"medium":11590101,"large":115901},{"subject":"1159","topic":115901010110,"small":1159010101,"medium":11590101,"large":115901},{"subject":"1159","topic":115901010111,"small":1159010101,"medium":11590101,"large":115901},{"subject":"1159","topic":115901020101,"small":1159010201,"medium":11590102,"large":115901},{"subject":"1159","topic":115901020102,"small":1159010201,"medium":11590102,"large":115901},{"subject":"1159","topic":115901020103,"small":1159010201,"medium":11590102,"large":115901},{"subject":"1159","topic":115901020104,"small":1159010201,"medium":11590102,"large":115901},{"subject":"1159","topic":115901020105,"small":1159010201,"medium":11590102,"large":115901},{"subject":"1159","topic":115901020106,"small":1159010201,"medium":11590102,"large":115901},{"subject":"1159","topic":115901020107,"small":1159010201,"medium":11590102,"large":115901},{"subject":"1159","topic":115901020108,"small":1159010201,"medium":11590102,"large":115901},{"subject":"1159","topic":115901020109,"small":1159010201,"medium":11590102,"large":115901},{"subject":"1159","topic":115901020110,"small":1159010201,"medium":11590102,"large":115901},{"subject":"1159","topic":115901020111,"small":1159010201,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202001,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202002,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202003,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202004,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202005,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202006,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202007,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202008,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202009,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202010,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202011,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202012,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202013,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202014,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":1159010202015,"small":1159010202,"medium":11590102,"large":115901},{"subject":"1159","topic":115901030101,"small":1159010301,"medium":11590103,"large":115901},{"subject":"1159","topic":115901030102,"small":1159010301,"medium":11590103,"large":115901},{"subject":"1159","topic":115901030103,"small":1159010301,"medium":11590103,"large":115901},{"subject":"1159","topic":115901030104,"small":1159010301,"medium":11590103,"large":115901},{"subject":"1159","topic":115901030105,"small":1159010301,"medium":11590103,"large":115901},{"subject":"1159","topic":115901030106,"small":1159010301,"medium":11590103,"large":115901},{"subject":"1159","topic":115901030107,"small":1159010301,"medium":11590103,"large":115901},{"subject":"1159","topic":115901030108,"small":1159010301,"medium":11590103,"large":115901},{"subject":"1159","topic":115901030109,"small":1159010301,"medium":11590103,"large":115901},{"subject":"1159","topic":115901030110,"small":1159010301,"medium":11590103,"large":115901},{"subject":"1159","topic":115901030111,"small":1159010301,"medium":11590103,"large":115901},{"subject":"1159","topic":115901040101,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040102,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040103,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040104,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040105,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040106,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040107,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040108,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040109,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040110,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040111,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040112,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040113,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040114,"small":1159010401,"medium":11590104,"large":115901},{"subject":"1159","topic":115901040115,"small":1159010401,"medium":11590104,"large":115901}]';
    const activityCategoryList = '415,416,417,418'.split(',');
    const levelCnt = '0,10,10,10,0'.split(',');
    const questionForm =  'multiple,subjective,descriptive';

    let plusTempLevelArray = [];
    for (let i = 0; i < levelCnt.length; i++) {
      let cnt = Number(levelCnt[i]);
      let pVal = cnt === 0? 0: cnt+20;
      plusTempLevelArray.push(pVal);
    }

    qParam.chapterList = chapterList;
    qParam.activityCategoryList = activityCategoryList;
    qParam.levelCnt = levelCnt;
    qParam.tmpLevelCnt = plusTempLevelArray;
    qParam.questionForm = questionForm;

    ajaxCall("POST", "/customExam/loadStep2", qParam, function (data) {
      if (data != null) {
        for(let j=1; j<=5; j++){
          if (data.levelGroup['0'+j] !== undefined) {
            $(".pop-wrap[data-pop='que-pop'] #pop-level"+j).show();
            $(".pop-wrap[data-pop='que-pop'] #pop-level"+j).find(".num").text(data.levelGroup['0'+j]);
          }
        }

        $(".pop-wrap[data-pop='que-pop'] #pop-total-sum .num").text(data.itemsTotalCnt);
        $(".pop-wrap[data-pop='que-pop'] #nxt-data").val(data.queIdList);

        showPop("que-pop");
      }
    });
  }

  //재구성된 문항으로 가져오기
  function moveToStep2() {
    let queArrParam = $(".pop-wrap #nxt-data").val();
    let new_form = $('<form></form>');

    new_form.attr("name", "new_form");
    new_form.attr("charset", "UTF-8");
    new_form.attr("method", "post");
    new_form.attr("action", "/customExam/step2");

    new_form.append($('<input/>', {type: 'hidden', name: 'chapterList', value:  qParam.chapterList}));
    new_form.append($('<input/>', {type: 'hidden', name: 'activityCategoryList', value: qParam.activityCategoryList}));
    new_form.append($('<input/>', {type: 'hidden', name: 'levelCnt', value: qParam.levelCnt}));
    new_form.append($('<input/>', {type: 'hidden', name: 'questionForm', value: qParam.questionForm}));
    new_form.append($('<input/>', {type: 'hidden', name: 'queArr', value: queArrParam}));
    new_form.append($('<input/>', {type: 'hidden', name: 'paperGubun', value: 'new'}));
    new_form.append($('<input/>', {type: 'hidden', name: 'subjectId', value: $("#subjectId").val()}));

    new_form.appendTo('body');
    new_form.submit();
  }

  function showPop(pop, className) {
    const dimClass = className === undefined ? "dim" : className;
    $('html , body').css('overflow', 'hidden');
    $('.' + dimClass).fadeIn();
    $(".pop-wrap[data-pop=" + pop + "]").show();
  }

  function closePop(pop, className) {
    const dimClass = className === undefined ? "dim" : className;
    $(".pop-wrap[data-pop=" + pop + "]").hide();

    $('.' + dimClass).fadeOut();
    // if (pop != "wrong-pop" ) {
    $('html , body').css('overflow', 'auto');
    // }
  }

</script>
</body>
</html>