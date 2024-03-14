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
            <ul class="title">
                <li>STEP 1 단원선택</li>
                <li>STEP 2 문항 편집</li>
                <li class="active">STEP 3 시험지 저장</li>
            </ul>
            <button type="button" class="del-btn"></button>
        </div>
        <div class="pop-content">
            <div class="view-box save-complete">
                <div class="btn-wrap">
                    <button class="btn-default"><a href="javascript:;">처음으로</a></button>
                </div>

                <div class="save-wrap">
                    <img src="/resource/popup/img/save.png" alt="저장완료 이미지">
                    <span class="txt">
							시험지가 저장되었습니다.
							<p>저장된 시험지는 시험지 보관함 메뉴에서 확인 가능합니다. </p>
						</span>
                    <div class="btn-wrap">
                        <button class="btn-icon">시험지 보관함으로 이동</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="dim"></div>
</div>
</body>
</html>
