<%--
  User: 이양진
  Date: 2024-03-07
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="/resource/midhigh/css/common.css"/>
  <link rel="stylesheet" type="text/css" href="/resource/midhigh/css/pages.css"/>
  <title>교과서 목록</title>
</head>
<body>
<!--header-->

<div class="header_bg_2022_v2 sticky" x-data="mhHeaderObj">
  <header class="header">
    <div class="util-line clearfix">
          <span class="util-link">
            <a href="https://kid.tsherpa.co.kr/">유치</a>
            <a href="https://ele.tsherpa.co.kr/">초등</a>
            <a href="https://mh.tsherpa.co.kr/" class="dark">중학·고등</a>
            <a href="https://mall.tsherpa.co.kr/" target="_blank">T셀파몰</a>
            <a href="https://edu.tsherpa.co.kr/" target="_blank">연수원</a>
            <a
                    href="https://cjtext.tsherpa.co.kr/2022/intro/intro.html"
                    target="_blank"
            >천재교과서</a
            >
          </span>
      <span class="util-member">
            <a href="javascript:logout();"
            ><span class="underline">로그아웃</span></a
            >
            <a href="https://www.tsherpa.co.kr/myT/membership/membership.html"
            >MY T셀파</a
            >
            <a href="https://www.tsherpa.co.kr/center/M-noticM.html"
            >고객센터</a
            >
            <a href="https://www.tsherpa.co.kr/event/index.html">이벤트</a>
            <a href="https://www.tsherpa.co.kr/center/M-sitemap.html"
            >사이트맵</a
            >
          </span>
    </div>

    <script>
      function doLogin() {
        let loginUrl = "/login.html";
        if (location.pathname.indexOf("/login.html") < 0) {
          loginUrl += "?returnUrl=" + encodeURIComponent(location.href);
        }
        location.href = loginUrl;
      }

      function logout() {
        Storages.cookieStorage.remove("gnb_seleted_grade");
        $.post("/ssoLogout.do").done(function (data) {
          if (data.success) {
            let returnUrl = location.protocol + "//" + location.host;
            document.location.href =
              "https://sso.chunjae.co.kr:446/api/auth/logout?returnUrl=" +
              returnUrl;
          } else {
            alert(data.message);
          }
        });
      }
    </script>
    <div class="header_top">
      <h1><a href="https://mh.tsherpa.co.kr/">T셀파</a></h1>
      <form
              id="keywordForm"
              name="keywordForm"
              method="get"
              action="https://mh.tsherpa.co.kr/testbank/testbank.html"
              autocomplete="off"
              target="_blank"
              onsubmit="return false;"
      >
        <div class="search_area">
          <input
                  type="text"
                  id="keyword"
                  name="keyword"
                  placeholder="검색어를 입력해주세요."
                  onkeyup="press();"
          />
          <a href="javascript:" class="btn btn_search" id="searchButton"
          >검색</a
          >
        </div>
      </form>
      <div class="header_top-banner">
        <a href="https://edu.tsherpa.co.kr/Untact/MeetList" target="_blank">
          <img
                  src="/resource/midhigh/img/banner/area_header/img-banner_20230515.png"
                  alt="선생님들의 비대면 지식공유 모임 T 배움터"
          />
        </a>
      </div>
    </div>

    <div class="header_nav">
      <div class="btn btn_allMenu">
        <button type="button">
          <span>전체메뉴</span>
        </button>
      </div>
      <!-- 1뎁스 -->
      <nav>
        <ul class="gnb">
          <li>
            <a
                    class="
"
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                    data-target="sub01"
            >교과서자료</a
            >
          </li>
          <li>
            <a
                    class="active"
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html"
            >문제은행</a
            >
          </li>
          <li>
            <a
                    class="
"
                    href="https://mh.tsherpa.co.kr/edutech/index.html"
            >에듀테크</a
            >
          </li>
          <li>
            <a
                    class="
"
                    href="https://mh.tsherpa.co.kr/class-research/tspoon/index.html"
            >수업연구소</a
            >
          </li>
          <li style="position: relative">
            <a href="https://sschannel.tsherpa.co.kr/" target="_blank">
              <img
                      src="/resource/midhigh/img/common/logo-ssam.png"
                      alt="쌤채널"
                      style="margin-top: -5px"
              />
            </a>
          </li>
        </ul>
      </nav>
    </div>
  </header>

  <!-- 2뎁스 -->
  <!-- D://  on 메뉴보이게 -->
  <div class="gnb_submenu">
    <a
            class="gnb_submenu__close"
            href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
    ><span class="ir_su">메뉴닫기</span></a
    >
    <!-- 2뎁스 : 교과서자료 -->
    <div class="subs sub01">
      <div class="inner">
        <div class="box01">
          <ul class="box01__list">
            <li>
              <a
                      class="on"
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="mhCateIndex = 0; getTextBookList();"
              >중학 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="mhCateIndex = 1; getTextBookList();"
              >고등 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
          </ul>
        </div>
        <div class="box02">
          <!-- 중등 과목 -->
          <ul class="box02__list on">
            <li>
              <a
                      class="on"
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(1)"
              >국어 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(2)"
              >영어 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(3)"
              >수학 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(4)"
              >사회/역사/도덕 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(5)"
              >과학/기술·가정/정보
                <span class="img-arrow-right-blue"></span
                ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(6)"
              >음악/미술/체육 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(7)"
              >선택/외국어 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
          </ul>
          <!-- 고등 과목 -->
          <ul class="box02__list">
            <li>
              <a
                      class="on"
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(1)"
              >국어 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(2)"
              >영어 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(3)"
              >수학 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(4)"
              >사회 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(5)"
              >역사 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(6)"
              >도덕 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(7)"
              >과학 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(8)"
              >기술·가정/정보 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(9)"
              >음악/미술/체육 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(10)"
              >제2외국어/한문 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
            <li>
              <a
                      href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
                      x-on:click="getTextBookList(11)"
              >교양/전문 <span class="img-arrow-right-blue"></span
              ></a>
            </li>
          </ul>
        </div>
        <div class="box03">
          <div
                  class="box03__column"
                  x-show="showTextBookList['2009']"
                  style="display: none"
          >
            <a
                    class="box03__column__btn on"
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
            >2009 개정</a
            >
            <ul class="box03__list on" style="height: auto">
              <template
                      x-for="item in showTextBookList['2009']"
              ></template>
            </ul>
          </div>
          <div
                  class="box03__column"
                  x-show="showTextBookList['2015']"
                  style=""
          >
            <a
                    class="box03__column__btn on"
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
            >2015 개정</a
            >
            <ul class="box03__list on" style="height: auto">
              <template
                      x-for="item in showTextBookList['2015']"
              ></template>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 1-1 (노미숙)</a
                >
              </li>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 1-2 (노미숙)</a
                >
              </li>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 2-1 (노미숙)</a
                >
              </li>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 2-2 (노미숙)</a
                >
              </li>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 3-1 (노미숙)</a
                >
              </li>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 3-2 (노미숙)</a
                >
              </li>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 1-1 (박영목)</a
                >
              </li>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 1-2 (박영목)</a
                >
              </li>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 2-1 (박영목)</a
                >
              </li>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 2-2 (박영목)</a
                >
              </li>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 3-1 (박영목)</a
                >
              </li>
              <li>
                <a
                        href="javascript:"
                        x-text="item.name"
                        x-on:click="goBookPage(item.id)"
                >국어 3-2 (박영목)</a
                >
              </li>
            </ul>
          </div>
          <div
                  class="box03__column"
                  x-show="showTextBookList['2020']"
                  style="display: none"
          >
            <a
                    class="box03__column__btn on"
                    href="https://mh.tsherpa.co.kr/testbank/testbank.html#"
            >2020 개정</a
            >
            <ul class="box03__list on" style="height: auto">
              <template
                      x-for="item in showTextBookList['2020']"
              ></template>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <span class="gnb_submenu__bg">
          <span></span>
        </span>
  </div>

  <script>
    $(function () {
      /* 1뎁스 클릭 관련 */
      $(".gnb li a").on("click", function (e) {
        e.stopPropagation();
        let depths_one = $(this).attr("data-target");
        bgDimClose();
        if (depths_one == null || depths_one == "") {
          //빈값이면
          $(".gnb li a").removeClass("on"); //1뎁스 비활성화
          $(".gnb_submenu").removeClass("on"); //2뎁스 영역 비활성화
        } else {
          //클릭한 1뎁스의 href 에 값이있으면
          if ($(this).hasClass("on")) {
            //활성화된 상태에서 1뎁스 메뉴 클릭시
            $(this).removeClass("on");
            $(".gnb_submenu").removeClass("on");
            $(".subs").removeClass("on");
          } else {
            //비활성화된 상태에서 1뎁스 메뉴 클릭시
            $(".gnb li a").removeClass("on");
            $(this).addClass("on");
            $(".gnb_submenu").addClass("on");
            $(".subs." + depths_one)
              .addClass("on")
              .siblings()
              .removeClass("on");
            $("body")
              .addClass("modal-open")
              .append(
                "<div class='gnb-bg' style='z-index:50; position:fixed; width:100%; height:100%; left:0; top:0; background-color: rgba(0,0,0,.2);'></div>"
              );
            $(document).on("click.gnb2depth", function (e) {
              let $clicked = $(e.target);
              if (!$clicked.closest(".subs." + depths_one).length) {
                bgDimClose();
                $(".gnb li a").removeClass("on"); // 1뎁스 비활성
                $(".gnb_submenu").removeClass("on"); // 2뎁스 영역 비활성
              }
            });
          }
        }
      });
      /* 네비게이션 우측 닫기버튼 클릭시 */
      $(".gnb_submenu__close").on("click", function (e) {
        bgDimClose();
        $(".gnb li a").removeClass("on"); // 1뎁스 비활성
        $(".gnb_submenu").removeClass("on"); // 2뎁스 영역 비활성
      });

      function bgDimClose() {
        //열려있는 2뎁스 닫을때 딤드 관련 제거
        $(".gnb-bg").remove();
        $("body").removeClass("modal-open");
        $(document).off("click.gnb2depth"); // 닫기영역 클릭 이벤트 비활성
      }

      /* 2뎁스 교과서자료실 : 중학 & 고등 메뉴 클릭시 */
      $(".box01__list li a").on("click", function (e) {
        let num = $(this).parent().index();
        // 이전 선택 과목 초기화 & 첫번째 과목 선택
        $(".box02__list li a").removeClass("on");
        $(".box02__list").eq(num).find("li a").eq(0).addClass("on");
        // 현재선택한 중학 & 고등 메뉴 클릭시
        $(".box01__list li a").removeClass("on");
        $(this).addClass("on");
        $(".box02__list")
          .css("display", "none")
          .eq($(this).parent().index())
          .css("display", "block");
      });
      /* 3뎁스 과목 클릭시 */
      $(".box02__list li a").on("click", function (e) {
        $(".box02__list li a").removeClass("on");
        $(this).addClass("on");
      });
      /* 4뎁스 클릭 관련 ~~~ 2015, 2020 개정 교육 과정 클릭 관련 */
      $(".box03__column__btn").on("click", function (e) {
        let _h = $(this).parent().find(".box03__list")[0].scrollHeight;
        if ($(this).hasClass("on")) {
          $(this).parent().find(".box03__list").attr("style", "height:0px");
          $(this).removeClass("on");
          $(this).parent().find(".box03__list").removeClass("on");
        } else {
          $(this)
            .parent()
            .find(".box03__list")
            .attr("style", "height:" + _h + "px");
          $(this).addClass("on");
          $(this).parent().find(".box03__list").addClass("on");
        }
      });
    });
  </script>
</div>

<script>
  let mhHeaderObj = {
    mhCateIndex: 0,
    mhCateList: [{"id": "604260", "code": "M-textBook", "name": "중학"}, {
      "id": "605947",
      "code": "H-textBook",
      "name": "고등"
    }],
    showTextBookList: {},
    getTextBookList: async function (groupId = 1) {
      let _this = this;
      // 교과서자료 GNB 메뉴 교과서 가져오기
      _this.showTextBookList = await $.get("/midhigh/getTextbookData.do", {
        mhCateId: _this.mhCateList[_this.mhCateIndex].id,
        groupId: groupId
      });

      // 애니메이션효과를 주기위해 불가피하게 높이값을 고정으로 설정(auto설정 후 높이값 측정)
      let $column = $('.box03__column__btn');
      $column.each(function () {
        if ($(this).hasClass("on")) {
          $(this).siblings(".box03__list").attr('style', 'height: auto');
        }
      });
      setTimeout(function () {
        $column.each(function () {
          let _h = $(this).siblings('.box03__list')[0].scrollHeight;
          if ($(this).hasClass("on")) {
            if (_h) $(this).siblings(".box03__list").attr('style', 'height:' + _h + 'px');
          }
        });
      }, 200)
    },
    goBookPage: function (id) {
      let _this = this;
      location.href = "/curri/schoolbookdata.html?id=" + id;
    },
    showTextBookMenu: function (mhIndex, groupId) {
      let _this = this;
      _this.mhCateIndex = mhIndex;
      _this.getTextBookList(groupId);
      $('.btn_close_menu').trigger("click");
      setTimeout(() => {
        $('.gnb li:first a').trigger("click");
        $('.box01__list li:eq(' + mhIndex + ') a').trigger("click");
        $('.box02__list:eq(' + mhIndex + ') li:eq(' + (groupId - 1) + ') a').trigger("click");
      }, 250);
    },
    init: function () {
      let _this = this;
      _this.getTextBookList(1);
    },
  };
</script>

<!-- gnb sitemap -->
<div class="gnb_sitemap_2023">
  <div class="map_header">
    <div class="inner">
      <span>T셀파 중학·고등 전체 서비스</span>
      <a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#" class="btn_close_menu">
        <img src="/resource/midhigh/img/common/btn-close-big-white.png" alt="닫기버튼">
      </a>
    </div>
  </div>
  <div class="map_wrap">
    <div class="map_inner">
      <div class="site_list">
        <div class="subject">
                    <span><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                             onclick="mhHeaderObj.$data.showTextBookMenu(0, 1)">중학 교과서 자료</a></span>
          <ul>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(0, 1)">국어</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(0, 2)">영어</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(0, 3)">수학</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(0, 4)">사회/역사/도덕</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(0, 5)">과학/기술·가정/정보</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(0, 6)">음악/미술/체육</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(0, 7)">선택/외국어</a></li>
          </ul>
        </div>
      </div>
      <div class="site_list">
        <div class="subject">
                    <span><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                             onclick="mhHeaderObj.$data.showTextBookMenu(1, 1)">고등 교과서 자료</a></span>
          <ul>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(1, 1)">국어</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(1, 2)">영어</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(1, 3)">수학</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(1, 4)">사회</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(1, 5)">역사</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(1, 6)">도덕</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(1, 7)">과학</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(1, 8)">기술·가정/정보</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(1, 9)">음악/미술/체육</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(1, 10)">제2외국어/한문</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage#"
                   onclick="mhHeaderObj.$data.showTextBookMenu(1, 11)">교양/전문</a></li>
          </ul>
        </div>
      </div>
      <div class="site_list">
        <div class="subject">
          <span><a href="https://mh.tsherpa.co.kr/testbank/testbank.html">문제은행</a></span>
          <ul>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=M-TestBank">중학</a></li>
            <li><a href="https://mh.tsherpa.co.kr/testbank/testbank.html?cateCode=TestBank-Storage">시험지
              보관함</a></li>
          </ul>
        </div>
      </div>
      <div class="site_list">
        <div class="subject">
          <span><a href="https://mh.tsherpa.co.kr/edutech/index.html">에듀테크</a></span>
          <ul>
            <li><a href="https://mh.tsherpa.co.kr/edutech/index.html">에듀테크 리스트</a></li>
          </ul>
        </div>
      </div>
      <div class="site_list">
        <div class="subject">
          <span><a href="https://mh.tsherpa.co.kr/class-research/tspoon/index.html">수업연구소</a></span>
          <ul>
            <li><a href="https://mh.tsherpa.co.kr/class-research/tspoon/index.html">Tspoon(매거진)</a></li>
            <li><a href="https://mh.tsherpa.co.kr/class-research/request/index.html">자료요청</a></li>
            <li><a href="https://mh.tsherpa.co.kr/class-research/vote/index.html">T Poll(설문조사)</a></li>
          </ul>
        </div>
      </div>
      <div class="site_list">
        <div class="subject">
          <span><a href="https://sschannel.tsherpa.co.kr/" target="_blank">쌤 채널</a></span>
          <ul>
            <li><a href="https://sschannel.tsherpa.co.kr/" target="_blank">쌤 채널</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <span class="drop_showArea">
        <span></span>
    </span>
</div>

<script>
  $(document).ready(function () {
    // 사이트맵 클릭 관련
    $('.btn_allMenu').on("click", function (e) {
      e.preventDefault();
      $(this).parents('body').addClass('_body_scroll');
      $(".quick_menu").css("z-index", 50);
      $(this).toggleClass("open");
      $(".gnb_sitemap_2023").slideToggle(100);
      $('.submenu-bg_dmimd').remove();
      $('.header_bg_2022_v2').append('<div class="submenu-bg_dmimd"></div>');
    });
    $('.btn_close_menu').on("click", function (e) {
      e.preventDefault();
      $(this).parents('body').removeClass('_body_scroll');
      $(".quick_menu").css("z-index", 105);
      $(".gnb_sitemap_2023").slideUp(100);
      $('.btn_allMenu').removeClass("open");
      $('.submenu-bg_dmimd').remove();
    });
  });
</script>
<!-- // gnb sitemap -->