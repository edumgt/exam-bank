<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: thegreatjy
  Date: 3/11/24
  Time: 11:21 AM
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
    <script type="text/javascript" src="/resource/popup/js/stepOne.js"></script>
</head>
<body>
    <%--
    <form method="post" id="postStep1PageForm" action="/customExam/step1">
        <input id="postStep1PageInput" name="subjectId" value="1136" />
        <button type="submit" id="postStep1PageBtn">step 0 -> step 1</button>
    </form>
    --%>

    <form method="post" id="postStep1PageForm" name="Step1DTO" action="/customExam/step1">
        <input id="postStep1PageInput" name="subjectId" value="1136" />
        <button type="submit" id="postStep1PageBtn">step 0 -> step 1</button>
    </form>

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
                        <button type="button" class="btn-line" data-value="${evaluation.domainId}" id="eval_${evaluation.domainId}" disabled="disabled">${evaluation.domainName}</button>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <!-- 평가 영역 -->

    <!-- 단원 정보 -->
    <div class="box">
        <div class="title-wrap">
            <span class="tit-text">단원 정보</span>
            <div class="right-area">
            </div>
        </div>

        <div class="btn-wrap multi" id="chapter-btn-group">
            <c:choose>
                <%-- 단원 정보가 존재하지 않을 때에는 평가영역 출력 X --%>
                <c:when test="${empty chapterList}">
                    <p>단원 정보가 존재하지 않습니다.</p>
                </c:when>
                <%-- 글이 1개 이상 존재할 때에는 글 목록 출력 O --%>
                <c:otherwise>
                    <c:forEach items="${chapterList}" var="chapter" varStatus="status">
                        <button type="button" class="btn-line" data-value="${chapter.topicChapterId}" id="chapter_${chapter.topicChapterId}" disabled="disabled">${chapter.topicChapterName}</button>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <!-- 단원 정보 -->
</body>
</html>
