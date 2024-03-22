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
        <div class="pop-content">
            <div class="view-box save-complete">
                <div class="btn-wrap">
                    <button class="btn-default" id="reset-btn"><a href="javascript:">처음으로</a></button>
                </div>

                <div class="save-wrap">
                    <img src="/resource/popup/img/save.png" alt="저장완료 이미지">
                    <span class="txt">
							시험지가 저장되었습니다.
							<p>저장된 시험지는 시험지 보관함 메뉴에서 확인 가능합니다. </p>
						</span>
                    <div class="btn-wrap">
                        <button class="btn-icon" id="moveToTestRepository">시험지 보관함으로 이동</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="dim"></div>
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
<script>
    $(document).ready(function () {
        $("#moveToTestRepository").click(function () {
            // 부모 창으로의 접근 후 부모 창에서의 이동
            window.opener.location.href = "/TestRepository";
            window.close(); // 현재 팝업 창 닫기
        });
    });
    //처음으로 버튼
    $("#reset-btn").on("click", function (){
        if (confirm ('처음 화면으로 이동하시겠습니까?\n(출제 방법 선택 화면으로 이동)\n페이지 이동 시 변경사항이 저장되지 않습니다.')) {
            let newForm = $('<form></form>');
            newForm.attr("name", "new_form");
            newForm.attr("charset", "UTF-8");
            newForm.attr("method", "post");
            newForm.attr("action", "/customTest/step0");
            newForm.append($('<input/>', {type: 'hidden', name: 'subjectId', value: ''}));
            newForm.appendTo('body');
            newForm.submit();
        }
    });
</script>
</body>
</html>
