<%--
  User: 이양진
  Date: 2024-03-07
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/views/common/headerA.jsp"/>

<!-- S : Paging -->
<!-- E : Paging -->

<form method="get" id="contentForm" name="contentForm">
  <input type="hidden" id="cateCode" name="cateCode" value="TestBank-Storage">
  <input type="hidden" id="sid" name="sid" value="0">
  <input type="hidden" id="tid" name="tid" value="0">
  <input type="hidden" id="pageIndex" name="pageIndex" value="1">
  <input type="hidden" id="keyword" name="keyword" value="">
  <input type="hidden" id="subjectId" name="subjectId" value="">
</form>
<!-- 시험지 보관함 -->
<div class="tb-container tb-storage">
  <div class="storage__body">
    <!-- 상단 검색 영역 -->
    <div class="storage__option">
      <div class="content-top">
        <div class="content-top__sort">
          <span class="content-top__text">교과서</span>
          <select class="content-top__dropdown form-control" id="selSubject"
                  name="selSubject" title="과목 선택" onchange="setCode();">
            <option value="0">과목</option>
            <option value="611467" title="KO">국어</option>
            <option value="611468" title="EN">영어</option>
            <option value="611469" title="MA">수학</option>
            <option value="611470" title="SO">사회</option>
            <option value="611471" title="HS">역사</option>
            <option value="611472" title="MO">도덕</option>
            <option value="611473" title="SC">과학</option>
          </select>
          <select class="content-top__dropdown form-control" id="selTextbook"
                  title="교과서 선택" onchange="setCode();">
            <option value="0">교과서</option>
          </select>
        </div>

        <div class="content-top__sort">
          <label class="content-top__text">시험지명</label>
          <div class="content-top__input">
            <input type="text" id="inputText" name="inputText" value=""
                   onkeyup="if (event.keyCode == 13) { getList(1); }"
                   placeholder="시험지명을 입력해 주세요.">
          </div>
        </div>

        <div class="content-top__sort">
          <button type="button" onclick="getList(1);"
                  class="content-top__button is-primary">검색
          </button>
          <button type="button"
                  onclick="location.href='/testbank/testbank.html?cateCode=TestBank-Storage'"
                  class="content-top__button is-gray">초기화
          </button>
        </div>
      </div>
    </div>
    <!-- // 상단 검색 영역 -->

    <div class="storage__section">
      <div class="content">
        <!-- 폴더 목록 선택 -->
        <div class="content-folder-sel">
          <div class="left-icon">
            <img src="/resource/midhigh/img/testbank_2023/folder_lg.png" alt="폴더 아이콘">
          </div>
          <select class="dropdown-style" title="폴더 선택" cursorshover="true" id="selFolder"
                  onchange="examList();">
            <option value="">전체</option>
            <option value="72">PM3TEST</option>
            <option value="73">PM3 TEST2</option>
          </select>
          <button type="button" class="setting-button" onclick="popFolderList();">
            <span class="ir_su">폴더 설정</span>
          </button>
        </div>
        <!-- // 폴더 목록 선택 -->

        <!--  -->
        <div class="content-control">
          <!-- 전체 선택 체크박스 -->
          <div class="agree select-all">
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="customCheckAll"
                     onclick="checkAll();">
              <label class="custom-control-label" for="customCheckAll">
                <span>총 <b id="checkCnt">0</b>개</span>
              </label>
            </div>
          </div>
          <!-- //전체 선택 체크박스 -->
          <div class="control-button">
            <button type="button" class="is-gray" onclick="popMoveFolder(0);">선택 폴더 이동
            </button>
            <button type="button" class="is-gray" onclick="selExamDel();">선택 시험지 삭제
            </button>
          </div>
        </div>
        <!-- // -->

        <!-- 시험지 목록 -->
        <div class="content-list" id="myExamList">
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="6780" id="customCheck_6780"
                    name="testbank_check">          <label class="custom-control-label"
                                                           for="customCheck_6780"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">전체
                  </div>
                  <div class="item__info-title">안녕1</div>
                  <div class="item__info-extra"><span>국어1-2(노미숙)-2015</span>
                    <span>28문항</span> <span>2023.10.05</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(6780);" title="">문항
                    편집</a> <a href="javascript:;" onclick="popMoveFolder(6780);"
                              title="">폴더 이동</a> <a href="javascript:;"
                                                    onclick="examDel(6780);"
                                                    title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(6780,'A');"><span
                        class="ir_su">전체</span></button>
                <button type="button" class="button-question"
                        onclick="examDown(6780,'Q');"><span
                        class="ir_su">문제</span></button>
                <button type="button" class="button-answer"
                        onclick="examDown(6780,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="11756" id="customCheck_11756" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_11756"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">전체
                  </div>
                  <div class="item__info-title">테스트</div>
                  <div class="item__info-extra"><span>수학3(이준열)-2015</span> <span>30문항</span>
                    <span>2023.11.09</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(11756);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(11756);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(11756);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(11756,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(11756,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(11756,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="12599" id="customCheck_12599" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_12599"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">전체
                  </div>
                  <div class="item__info-title">TEST-1114</div>
                  <div class="item__info-extra"><span>국어3-1(박영목)-2015</span>
                    <span>28문항</span> <span>2023.11.14</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(12599);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(12599);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(12599);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(12599,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(12599,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(12599,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="21876" id="customCheck_21876" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_21876"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">전체
                  </div>
                  <div class="item__info-title">240115_test</div>
                  <div class="item__info-extra"><span>영어③(이재영)-2015</span> <span>30문항</span>
                    <span>2024.01.15</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(21876);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(21876);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(21876);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(21876,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(21876,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(21876,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="21877" id="customCheck_21877" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_21877"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">전체
                  </div>
                  <div class="item__info-title">0115_test</div>
                  <div class="item__info-extra"><span>국어1-1(박영목)-2015</span>
                    <span>10문항</span> <span>2024.01.15</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(21877);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(21877);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(21877);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(21877,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(21877,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(21877,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="21878" id="customCheck_21878" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_21878"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">전체
                  </div>
                  <div class="item__info-title">0115_test22</div>
                  <div class="item__info-extra"><span>국어1-1(박영목)-2015</span>
                    <span>11문항</span> <span>2024.01.15</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(21878);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(21878);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(21878);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(21878,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(21878,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(21878,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="22755" id="customCheck_22755" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_22755"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">PM3TEST
                  </div>
                  <div class="item__info-title">PM3 TEST</div>
                  <div class="item__info-extra"><span>수학1(이준열)-2015</span> <span>15문항</span>
                    <span>2024.02.27</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(22755);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(22755);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(22755);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(22755,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(22755,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(22755,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="22757" id="customCheck_22757" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_22757"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">PM3TEST
                  </div>
                  <div class="item__info-title">PM3 TEST2</div>
                  <div class="item__info-extra"><span>수학2(이준열)-2015</span> <span>30문항</span>
                    <span>2024.02.27</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(22757);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(22757);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(22757);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(22757,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(22757,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(22757,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="22758" id="customCheck_22758" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_22758"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">전체
                  </div>
                  <div class="item__info-title">안녕1</div>
                  <div class="item__info-extra"><span>국어1-2(노미숙)-2015</span>
                    <span>28문항</span> <span>2024.02.27</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(22758);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(22758);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(22758);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(22758,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(22758,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(22758,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="22759" id="customCheck_22759" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_22759"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">PM3 TEST2
                  </div>
                  <div class="item__info-title">PM3TEST3</div>
                  <div class="item__info-extra"><span>수학1(이준열)-2015</span> <span>30문항</span>
                    <span>2024.02.27</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(22759);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(22759);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(22759);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(22759,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(22759,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(22759,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="22962" id="customCheck_22962" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_22962"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">전체
                  </div>
                  <div class="item__info-title">테스트</div>
                  <div class="item__info-extra"><span>수학1(이준열)-2015</span> <span>33문항</span>
                    <span>2024.03.04</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(22962);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(22962);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(22962);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(22962,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(22962,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(22962,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="22963" id="customCheck_22963" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_22963"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">전체
                  </div>
                  <div class="item__info-title">테스트</div>
                  <div class="item__info-extra"><span>수학1(이준열)-2015</span> <span>33문항</span>
                    <span>2024.03.04</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(22963);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(22963);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(22963);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(22963,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(22963,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(22963,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="22964" id="customCheck_22964" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_22964"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">전체
                  </div>
                  <div class="item__info-title">죄송</div>
                  <div class="item__info-extra"><span>국어3-2(노미숙)-2015</span>
                    <span>22문항</span> <span>2024.03.04</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(22964);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(22964);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(22964);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(22964,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(22964,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(22964,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
          <div class="content-list__item">
            <div class="check item-checkbox"><span
                    class="custom-control custom-checkbox">          <input
                    type="checkbox" class="custom-control-input checkbox-input"
                    value="22997" id="customCheck_22997" name="testbank_check">          <label
                    class="custom-control-label" for="customCheck_22997"></label>        </span>
            </div>
            <div class="content-list__inner">
              <div class="content-list__item-left">
                <div class="item__info">
                  <div class="item__info-name"><img
                          src="/resource/midhigh/img/testbank_2023/folder_sm.png" alt="아이콘">전체
                  </div>
                  <div class="item__info-title">소인수분해</div>
                  <div class="item__info-extra"><span>수학1(이준열)-2015</span> <span>30문항</span>
                    <span>2024.03.05</span></div>
                </div>
                <div class="item__download">
                  <div class="item_buttons"><a href="javascript:;"
                                               onclick="editExam(22997);"
                                               title="">문항 편집</a> <a
                          href="javascript:;" onclick="popMoveFolder(22997);"
                          title="">폴더 이동</a> <a href="javascript:;"
                                                onclick="examDel(22997);"
                                                title="">시험지 삭제</a></div>
                </div>
              </div>
              <div class="content-list__item-right"><p class="tit">시험지 다운로드</p>
                <button type="button" class="button-all"
                        onclick="examDown(22997,'A');"><span class="ir_su">전체</span>
                </button>
                <button type="button" class="button-question"
                        onclick="examDown(22997,'Q');"><span class="ir_su">문제</span>
                </button>
                <button type="button" class="button-answer"
                        onclick="examDown(22997,'E');"><span class="ir_su">정답+해설</span>
                </button>
                <div class="button-image"></div>
              </div>
            </div>
          </div>
        </div>
        <!-- //시험지 목록 -->

        <!-- pagination -->
        <ul id="pagination" class="pagination justify-content-center"
            style="display: none;">
          <li class="page-item first disabled"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link"></a></li>
          <li class="page-item prev disabled"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link"></a></li>
          <li class="page-item active"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link">1</a></li>
          <li class="page-item"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link">2</a></li>
          <li class="page-item"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link">3</a></li>
          <li class="page-item"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link">4</a></li>
          <li class="page-item"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link">5</a></li>
          <li class="page-item"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link">6</a></li>
          <li class="page-item"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link">7</a></li>
          <li class="page-item"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link">8</a></li>
          <li class="page-item"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link">9</a></li>
          <li class="page-item"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link">10</a></li>
          <li class="page-item next"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link"></a></li>
          <li class="page-item last"><a
                  href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                  class="page-link"></a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- // 시험지 보관함 -->

<!--폴더 관리-->
<div class="modal fade" tabindex="-1" role="dialog" id="subjectPopup" aria-modal="true">
  <div class="modal-dialog-centered modal-dialog modal-sm-460" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <div class="modal-title">폴더 관리</div>
        <a class="close" data-dismiss="modal" aria-label="Close">
          <img src="/resource/midhigh/img//btn-close-big-white.png" alt="닫기버튼" aria-hidden="true">
        </a>
      </div>
      <div class="modal-body folderManagement-popup">
        <div class="category-line">
          <p class="title">문항 삭제는 <span>시험지 보관함&gt;시험지 목록&gt;편집</span> 에서 하실 수 있습니다.</p>
        </div>
        <div class="inner">
          <div class="table_wrapper">
            <table class="table text-align-left flat-row">
              <colgroup>
                <col style="width:auto;">
                <col style="width:127px;">
              </colgroup>

              <tbody id="folderList">
              <tr>
                <td id="title_72">PM3TEST</td>
                <td><a href="javascript:;" onclick="editFolder(72)"
                       class="btn btn-gray" id="btn_72"><span class="name">편집</span></a>
                  <a href="javascript:;" onclick="delFolder(72);"
                     class="btn btn-gray del"><span class="delete"></span></a>
                </td>
              </tr>
              <tr>
                <td id="title_73">PM3 TEST2</td>
                <td><a href="javascript:;" onclick="editFolder(73)"
                       class="btn btn-gray" id="btn_73"><span class="name">편집</span></a>
                  <a href="javascript:;" onclick="delFolder(73);"
                     class="btn btn-gray del"><span class="delete"></span></a>
                </td>
              </tr>
              </tbody>
            </table>
          </div>
          <div class="bot_btncase mt30">
            <a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
               class="btn btn-gray folder_maker" onclick="popAddFolder();"><span
                    class="name">신규 폴더 생성</span></a>
            <a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
               class="btn btn-gray" data-dismiss="modal"><span
                    class="name">취소</span></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--폴더 관리-->

<!---신규 폴더 생성-->
<div class="modal fade" tabindex="-1" role="dialog" id="folderAdd" aria-modal="true">
  <div class="modal-dialog-centered modal-dialog modal-sm-460" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <div class="modal-title">신규 폴더 생성</div>
        <a class="close" data-dismiss="modal" aria-label="Close">
          <img src="/resource/midhigh/img/common/btn-close-big-white.png" alt="닫기버튼"
               aria-hidden="true">
        </a>
      </div>
      <div class="modal-body folder_add">
        <div class="section_text_wrap">
          <div class="text">신규로 생성할 폴더명을 입력해주세요.<br><span class="sub_text">(폴더명은 10자 이내로 입력해 주세요)</span>
          </div>
        </div>
        <div class="section_input_wrap">
          <input type="text" id="folderTitle" for="cmmt_text_new" data-input-keyup="keyup"
                 class="folder_name" title="제목입력" placeholder="폴더명을 입력해 주세요"
                 maxlength="10">
          <span class="text_num"><span id="cmmt_text_new">0</span>/10</span>
        </div>
      </div>

      <div class="modal-footer">
        <a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
           class="btn btn-primary btn-lg" onclick="addFolder();"><span
                class="name">확인</span></a>
        <a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
           class="btn btn-default btn-lg" data-dismiss="modal"><span class="name">취소</span></a>
      </div>

    </div>
  </div>
</div>
<!---신규 폴더 생성-->


<!--폴더 이동-->
<div class="modal fade" tabindex="-1" role="dialog" id="moveFolderPopup" aria-modal="true">
  <div class="modal-dialog-centered modal-dialog modal-sm-460" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <div class="modal-title">폴더 이동</div>
        <a class="close" data-dismiss="modal" aria-label="Close">
          <img src="/resource/midhigh/img/common/btn-close-big-white.png" alt="닫기버튼"
               aria-hidden="true">
        </a>
      </div>
      <div class="modal-body folderManagement-popup">
        <div class="category-line">
          <p class="title">이동할 폴더를 선택해 주세요</p>
        </div>
        <div class="inner">
          <div class="table_wrapper">
            <table class="table text-align-left flat-row">
              <colgroup>
                <col style="width:100%">
              </colgroup>

              <tbody id="moveFolderPopup_folderList">
              <tr>
                <td>
                  <div class="custom-control custom-radio"><input type="radio"
                                                                  id="customRadio_72"
                                                                  value="72"
                                                                  checked="checked"
                                                                  name="customRadioFolder"
                                                                  class="custom-control-input">
                    <label class="custom-control-label change_left pl40"
                           for="customRadio_72">PM3TEST </label></div>
                </td>
              </tr>
              <tr>
                <td>
                  <div class="custom-control custom-radio"><input type="radio"
                                                                  id="customRadio_73"
                                                                  value="73"
                                                                  checked="checked"
                                                                  name="customRadioFolder"
                                                                  class="custom-control-input">
                    <label class="custom-control-label change_left pl40"
                           for="customRadio_73">PM3 TEST2</label></div>
                </td>
              </tr>
              </tbody>
            </table>
          </div>
          <div class="modal-footer">
            <a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
               class="btn btn-primary btn-lg" onclick="moveToExamFolder();"><span
                    class="name">확인</span></a>
            <a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
               class="btn btn-default btn-lg" data-dismiss="modal"><span
                    class="name">취소</span></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--폴더 이동-->
<script type="text/javascript">

  let _form = null;
  let moveExamIds = [];

  $(initPage);

  function initPage() {
    if (!checkUserLoggedIn(location.href)) {
      return false;
    }
    _form = $("#contentForm");
    myFolderList();
    examList();
  }

  function goToPage(pageIndex) {
    getList(pageIndex);
  }

  function getList(pageIndex) {
    $("#pageIndex").val(pageIndex);
    $("#keyword").val($("#inputText").val());
    _form.submit();
  }

  function setCode() {
    $("#sid").val($("#selSubject").val());
    $("#subjectId").val($('select[name="selSubject"] > option:checked').attr("title"));
    $("#tid").val($("#selTextbook").val());
    goToPage(1);
  }

  function checkAll() {
    let cnt = 0;
    if ($("#customCheckAll").prop("checked")) {
      $('input:checkbox[name="testbank_check"]').each(function () {
        $(this).prop("checked", true);
        cnt++;
      });
    } else {
      $('input:checkbox[name="testbank_check"]').each(function () {
        $(this).prop("checked", false);
      });
    }

    $("#checkCnt").html(cnt);
  }

  function myFolderList() {
    if (!checkUserLoggedIn(location.href)) {
      return false;
    }
    $.ajax({
      type: 'post',
      url: '/pinTestbook/selectFolderList',
      dataType: 'json',
      cache: false,
      async: false,
      success: function (response) {
        let result = response.success;
        let list = response.list;

        if (result) {
          $("#folderList").empty();
          $("#selFolder").empty();
          $("#moveFolderPopup_folderList").empty();
          $("#selFolder").append('<option value="">전체</option>');
          for (i = 0; i < list.length; i++) {
            let title = list[i]["title"];
            let id = list[i]["id"]

            $('#folderList').append(
              '<tr>' +
              '    <td id="title_' + id + '">' + title + '</td>' +
              '    <td>' +
              '        <a href="javascript:;" onclick="editFolder(' + id + ')" class="btn btn-gray" id="btn_' + id + '"><span class="name">편집</span></a>' +
              '        <a href="javascript:;" onclick="delFolder(' + id + ');" class="btn btn-gray del"><span class="delete"></span></a>' +
              '    </td>' +
              '</tr>'
            );

            $("#selFolder").append('<option value="' + id + '">' + title + '</option>');

            $("#moveFolderPopup_folderList").append(
              '<tr>' +
              '    <td><div class="custom-control custom-radio">' +
              '        <input type="radio" id="customRadio_' + id + '" value="' + id + '" checked="checked" name="customRadioFolder" class="custom-control-input">' +
              '        <label class="custom-control-label change_left pl40" for="customRadio_' + id + '">' + title + '</label>' +
              '    </div></td>' +
              '</tr>'
            );
          }
        }
      },
      error: function (request, status, error) {
        console.error(request, status, error);
      }
    });
  }

  function addFolder() {
    if (!checkUserLoggedIn(location.href)) {
      return false;
    }

    if ($("#folderTitle").val() === "") {
      alert("폴더명을 입력하세요.");
    }
    let data = {
      title: $("#folderTitle").val().toString()
    };

    $.ajax({
      type: 'post',
      url: '/pinTestbook/createFolder',
      data: data,
      dataType: 'json',
      cache: false,
      async: false,
      success: function (response) {
        let result = response.success;
        if (result) {
          $("#folderAdd").modal('hide');
          myFolderList();
          popFolderList();
        }
      },
      error: function (request, status, error) {
        console.error(request, status, error);
      }
    });
  }

  function popAddFolder() {
    if (!checkUserLoggedIn(location.href)) {
      return false;
    }
    $("#folderTitle").val("");
    $("#folderAdd").modal('show');
  }

  function popMoveFolder(examId) {
    if (!checkUserLoggedIn(location.href)) {
      return false;
    }
    myFolderList();
    moveExamIds = [];
    if (examId === 0) {
      $('input:checkbox[name="testbank_check"]').each(function () {
        if ($(this).val() !== "" && $(this).prop("checked")) {
          moveExamIds.push($(this).val());
        }
      });
    } else {
      moveExamIds.push(examId);
    }

    if (moveExamIds.length === 0) {
      alert("선택된 시험지가 없습니다.");
      return;
    } else {
      $("#moveFolderPopup").modal('show');
      $("#customCheckAll").prop("checked", false);
    }
  }

  function popFolderList() {
    $('#subjectPopup').modal('show');
  }

  function delFolder(id) {
    if (!checkUserLoggedIn(location.href)) {
      return false;
    }

    let data = {id: id};
    $.ajax({
      type: 'post',
      url: '/pinTestbook/deleteFolder',
      data: data,
      dataType: 'json',
      cache: false,
      async: false,
      success: function (response) {
        let result = response.success;
        if (result) {
          myFolderList();
          popFolderList();
        }
      },
      error: function (request, status, error) {
        console.error(request, status, error);
      }
    });
  }

  function updateFolder(id) {
    if (!checkUserLoggedIn(location.href)) {
      return false;
    }

    let data = {id: id, title: $("#txt_" + id).val().toString()};
    $.ajax({
      type: 'post',
      url: '/pinTestbook/updateFolder',
      data: data,
      dataType: 'json',
      cache: false,
      async: false,
      success: function (response) {
        let result = response.success;
        if (result) {
          myFolderList();
          popFolderList();
        }
      },
      error: function (request, status, error) {
        console.error(request, status, error);
      }
    });
  }

  function editFolder(id) {
    if (!checkUserLoggedIn(location.href)) {
      return false;
    }

    let tmp = $("#title_" + id).text();

    $("#title_" + id).html('<input class="inp_folder" id="txt_' + id + '" type="text" value="' + tmp + '">');
    $("#btn_" + id).html('<span class="name">수정</span>');
    $("#btn_" + id).addClass("mod");
    $("#btn_" + id).removeAttr("onclick");
    $("#btn_" + id).attr('onclick', 'updateFolder(' + id + ');');
  }

  let examDomain = "https://testbank.tsherpa.co.kr/api/";

  function examList() {
    $("#pagination").hide();
    let tmpId = "0";
    if (tmpId === "0") tmpId = "";

    let data = {
      bookCd: tmpId,
      paperName: "",
      subjectId: "",
      userId: "dongtest_002"
    };

    $.ajax({
      type: 'post',
      url: examDomain + 'paperList',
      data: JSON.stringify(data),
      contentType: 'application/json',
      success: function (response) {
        let result = response.successYn;
        let list = response.paperList;

        $("#myExamList").empty();
        if (result === "Y") {
          for (i = 0; i < list.length; i++) {
            let paperName = list[i]["paperName"];
            let paperId = list[i]["paperId"];
            let textName = list[i]["textName"].replace("개정 교육과정", "");
            let questionCnt = list[i]["questionCnt"];
            let createDate = list[i]["createDate"];
            let folderTitle = selectExamFolder(list[i]["paperId"]);
            let selFolderTitle = $("#selFolder option:selected").text();

            let html = "<div class=\"content-list__item\">" +
              "    <div class=\"check item-checkbox\">" +
              "        <span class=\"custom-control custom-checkbox\">" +
              "          <input type=\"checkbox\" class=\"custom-control-input checkbox-input\" value=\"{0}\" id=\"customCheck_{0}\" name=\"testbank_check\">" +
              "          <label class=\"custom-control-label\" for=\"customCheck_{0}\"></label>" +
              "        </span>" +
              "    </div>" +
              "    <div class=\"content-list__inner\">" +
              "       <div class=\"content-list__item-left\">" +
              "            <div class=\"item__info\">" +
              "                <div class=\"item__info-name\">" +
              "                    <img src=\"//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/midhigh/img/testbank_2023/folder_sm.png\" alt=\"아이콘\">{1}" +
              "                </div>" +
              "                <div class=\"item__info-title\">{2}</div>" +
              "                <div class=\"item__info-extra\">" +
              "                    <span>{3}</span>" +
              "                    <span>{4}문항</span>" +
              "                    <span>{5}</span>" +
              "                </div>" +
              "            </div>" +
              "            <div class=\"item__download\">" +
              "                <div class=\"item_buttons\">" +
              "                    <a href=\"javascript:;\" onclick=\"editExam({0});\" title=\"\">문항 편집</a>" +
              "                    <a href=\"javascript:;\" onclick=\"popMoveFolder({0});\" title=\"\">폴더 이동</a>" +
              "                    <a href=\"javascript:;\" onclick=\"examDel({0});\" title=\"\">시험지 삭제</a>" +
              "                </div>" +
              "            </div>" +
              "        </div>" +
              "        <div class=\"content-list__item-right\">" +
              "           <p class=\"tit\">시험지 다운로드</p>" +
              "            <button type=\"button\" class=\"button-all\" onclick=\"examDown({0},'A');\"><span class=\"ir_su\">전체</span></button>" +
              "            <button type=\"button\" class=\"button-question\" onclick=\"examDown({0},'Q');\"><span class=\"ir_su\">문제</span></button>" +
              "            <button type=\"button\" class=\"button-answer\" onclick=\"examDown({0},'E');\"><span class=\"ir_su\">정답+해설</span></button>" +
              "            <div class=\"button-image\"></div>" +
              "        </div>" +
              "   </div>" +
              "</div>";

            if ($("#selFolder").val() === "") {
              $("#myExamList").append(
                Common.format(html, paperId, folderTitle, paperName, textName, questionCnt, createDate)
              );
            } else {
              if (selFolderTitle === folderTitle) {
                $("#myExamList").append(
                  Common.format(html, paperId, folderTitle, paperName, textName, questionCnt, createDate)
                );
              }
            }
          }
        }

      },
      error: function (request, status, error) {
        console.error(request, status, error);
      }
    });
  }

  function selectExamFolder(id) {
    let data = {examId: id};
    let result = "전체";
    $.ajax({
      type: 'post',
      url: '/pinTestbook/selectExamFolder',
      data: data,
      dataType: 'json',
      cache: false,
      async: false,
      success: function (response) {
        if (response.list.length > 0) {
          result = response.list[0]["title"];
        }
      },
      error: function (request, status, error) {
        console.error(request, status, error);
      }
    });

    return result;
  }

  function moveToExamFolder() {
    if (!checkUserLoggedIn(location.href)) {
      return false;
    }
    let folderId = $('input:radio[name="customRadioFolder"]:checked').val();

    let data = {folderId: folderId, examId: moveExamIds.toString()};

    $.ajax({
      type: 'post',
      url: '/pinTestbook/moveExamToFolder',
      data: data,
      dataType: 'json',
      cache: false,
      async: false,
      success: function (response) {
        if (response.success) {
          moveExamIds = [];
          $("#moveFolderPopup").modal('hide');
          examList();
        }
      },
      error: function (request, status, error) {
        console.error(request, status, error);
      }
    });
  }

  function examDel(id) {
    if (confirm("삭제 하시겠습니까?")) {
      let data = {
        paperId: [id],
        userId: "dongtest_002"
      };
      $.ajax({
        type: 'post',
        url: examDomain + 'delPaper',
        data: JSON.stringify(data),
        contentType: 'application/json',
        success: function (response) {
          if (response.successYn === "Y") {
            examList();
          }
        },
        error: function (request, status, error) {
          console.error(request, status, error);
        }
      });
    }
  }

  function selExamDel() {
    let ids = new Array();
    $('input:checkbox[name="testbank_check"]').each(function () {
      if ($(this).val() !== "" && $(this).prop("checked")) {
        ids.push($(this).val());
      }
    });
    if (ids.length === 0) {
      alert("선택된 시험지가 없습니다.");
      return;
    }

    if (confirm("삭제 하시겠습니까?")) {
      let data = {
        paperId: ids,
        userId: "dongtest_002"
      };
      $.ajax({
        type: 'post',
        url: examDomain + 'delPaper',
        data: JSON.stringify(data),
        contentType: 'application/json',
        success: function (response) {
          if (response.successYn === "Y") {
            examList();
          }
        },
        error: function (request, status, error) {
          console.error(request, status, error);
        }
      });
    }
  }

  function examDown(id, type) {
    let data = {
      paperId: id,
      paperType: type
    };
    $.ajax({
      type: 'post',
      url: examDomain + 'downloadPaper',
      data: JSON.stringify(data),
      contentType: 'application/json',
      success: function (response) {
        location.href = response.fileUrl;
      },
      error: function (request, status, error) {
        console.error(request, status, error);
      }
    });
  }

  function editExam(id) {
    $("#paperId").val(id);
    $("#examEditFrm").one("submit", function () {
      window.open('', 'pop_target', 'width=1400, height=960');
      this.target = 'pop_target';
    }).trigger("submit");

  }
</script>
<form id="examEditFrm" name="examEditFrm" method="post"
      action="https://testbank.tsherpa.co.kr/customExam/updateStep2">
  <input type="hidden" id="paperId" name="paperId" value="">
</form>
</div>

</div>
</div>
</div>
</main>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>