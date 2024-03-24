<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  User: 이양진
  Date: 2024-03-07
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/views/common/headerA.jsp"/>

<!-- S : Paging -->
<!-- E : Paging -->

<form method="get" id="contentForm" name="contentForm">
  <input type="hidden" id="oldSeq" name="oldSeq" value="${testPaper.seq}">
  <input type="hidden" id="cateCode" name="cateCode" value="TestBank-Storage">
  <input type="hidden" id="sid" name="sid" value="0">
  <input type="hidden" id="tid" name="tid" value="0">
  <input type="hidden" id="pageIndex" name="pageIndex" value="1">
  <input type="hidden" id="keyword" name="keyword" value="">
  <input type="hidden" id="subjectId" name="subjectId" value="">
</form>
<!-- 시험지 보관함 -->
<div class="tb-container tb-storage" id="tb-storage">
  <div class="storage__body">

    <div class="storage__section">
      <div class="content">

        <div class="content-control">
          <%-- 과목별 조회 selectbox 등 --%>
        </div>
        <!-- 시험지 목록 -->
        <div class="content-list" id="myExamList">
          <c:forEach items="${testPapers}" var="testPaper">
            <c:if test="${testPaper.deleteFlag != 1}">
              <div class="content-list__item" id="testPaper_${testPaper.seq}">
                <div class="content-list__inner">
                  <div class="content-list__item-left">
                    <div class="item__info">
                      <div class="item__info-title">${testPaper.name}</div>
                      <div class="item__info-extra">
                        <span>${empty testPaper.subjectName ? 'N/A' : testPaper.subjectName}</span>
                        <span>${empty testPaper.itemCnt ? 'N/A' : testPaper.itemCnt}문항</span>
                        <span>${empty testPaper.regDate ? 'N/A' : testPaper.regDate}</span>
                      </div>
                    </div>
                    <div class="item__download">
                      <div class="item_buttons">
                        <a href="javascript:;" onclick="editExam(${testPaper.seq});" title="">문항 편집</a>
                        <a href="javascript:;" onclick="examDel(${testPaper.seq});" title="">시험지 삭제</a>
                      </div>
                    </div>
                  </div>
                  <div class="content-list__item-right">
                    <p class="tit">시험지 다운로드</p>
                    <button type="button" class="button-all" onclick="examDown(${testPaper.seq},'${testPaper.name}','A');"><span class="ir_su">전체</span></button>
                    <button type="button" class="button-question" onclick="examDown(${testPaper.seq},'${testPaper.name}','Q');"><span class="ir_su">문제</span></button>
                    <button type="button" class="button-answer" onclick="examDown(${testPaper.seq},'${testPaper.name}','E');"><span class="ir_su">정답+해설</span></button>
                    <div class="button-image"></div>
                  </div>
                </div>
              </div>
            </c:if>
          </c:forEach>
        </div>
      </div>
      <!-- // 시험지 보관함 -->

      <script>
        /* 탭 메뉴 활성화 */
        function setExamStorage() {
          const btnStorage = document.getElementById("btn-storage");
          const btnExamBank = document.getElementById("btn-examBank");
          const linkStorage = btnStorage.querySelector("a");
          const linkExamBank = btnExamBank.querySelector("a");

          linkStorage.classList.add("tabs__link--on");
          linkExamBank.classList.remove("tabs__link--on");
          $('.tabs__list--4').hide();
        }

        window.onload = setExamStorage();
      </script>

      <script>
        function examDel(seq) {
          if (confirm("삭제 하시겠습니까?")) {
            $.ajax({
              type: 'post',
              url: '/customExam/deleteExam',
              data: {seq: seq},
              success: function () {
                if (this.success) {
                  $("#testPaper_" + seq).remove(); // 예를 들어, 해당 항목의 div id가 testPaper_{{seq}}일 때
                  alert("정상적으로 삭제되었습니다.")
                  location.reload();
                }
              },
              error: function (request, status, error) {
                console.error(request, status, error);
              }
            });
          }
        }

        function editExam(seq) {
          // 새로운 시험지 정보를 가져오는 AJAX 요청
          $.ajax({
            type: 'GET',
            url: '/customExam/getTestPaperById/' + seq,
            success: function (response) {
              // 가져온 시험지 정보를 이용하여 편집 폼을 채움
              populateEditForm(response);
            },
            error: function (request, status, error) {
              console.error(request, status, error);
            }
          });
        }

        function populateEditForm(testPaper) {
          // 시험지 정보를 편집 폼에 채움
          $("#paperId").val(testPaper.seq);
          $("#paperName").val(testPaper.name);
          $("#subjectName").val(testPaper.subjectName);
          // 필요한 다른 필드들도 채워넣을 수 있습니다.

          // 시험지 편집 폼을 제출하여 새로운 시험지로 업데이트
          $("#examEditFrm").one("submit", function () {
            window.open('', 'pop_target', 'width=1400, height=960');
            this.target = 'pop_target';
          }).trigger("submit");
        }

  function setExamStorage() {
    const btnExamBank = document.getElementById("btn-examBank");
    const btnStorage = document.getElementById("btn-storage");
    const linkExamBank = btnExamBank.querySelector('a');
    const linkStorage = btnStorage.querySelector('a');

    linkExamBank.classList.remove("tabs__link--on");
    linkStorage.classList.add("tabs__link--on");

    $(".tabs__list--4").hide();
  }

  function examDown(exam_seq,exam_name,type){
    const data = {
      "examId": exam_seq,
      "dataType": type
    }
    // 시험지 id에 따른 itemlist 요청
    $.ajax({
      type : 'post',           // 타입 (get, post, put 등등)
      url : '/exambank/customExamAPI/getItemListByExamId', // 요청할 서버 url
      async : true,            // 비동기화 여부 (default : true)
      dataType : 'json',       // 데이터 타입 (html, xml, json, text 등등)
      contentType: 'application/json',
      data :  JSON.stringify(data),
      success : function(result) { // 결과 성공 콜백함수
        console.log("result===>>>",result);
        renderImg(exam_name,result.itemList,type);

      },
      error : function(request, status, error) { // 결과 에러 콜백함수
        console.log(error)
      }
    });

        }
      </script>
      <form id="examEditFrm" name="examEditFrm" method="post"
            action="/customExam/step2">
        <input type="hidden" id="paperId" name="paperId" value="">
      </form>
    </div>

</div>
</div>
</div>
</main>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
<div class="secret" style="height: 0px;overflow: hidden;">
  <%@ include file="/WEB-INF/views/customexam/makeExamPaper.jsp"%>
</div>