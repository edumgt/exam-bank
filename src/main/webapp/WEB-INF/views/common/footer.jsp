<%--
  User: 이양진
  Date: 2024-03-07
--%>
<!--footer-->
<div class="footer">
  <div class="service_wrap">
    <div class="service_inner">
      <div class="information">
        <p>
              <span class="info">고객센터 1577-7609</span
              ><span>(평일 09:00~17:30)</span>
        </p>
      </div>
      <div class="utility clearfix">
        <div class="util_box">
              <span
              ><a
                      href="https://www.tsherpa.co.kr/center/M-mainservicM.html"
                      target="_blank"
              >이용안내</a
              ></span
              >
          <span
          ><a
                  href="https://www.tsherpa.co.kr/center/M-qna-list.html"
                  target="_blank"
          >자주 묻는 질문</a
          ></span
          >
          <span
          ><a
                  href="https://www.tsherpa.co.kr/center/M-inquiry.html"
                  target="_blank"
          >1:1 문의</a
          ></span
          >
        </div>
        <div class="icon_box">
          <a
                  href="https://pf.kakao.com/_xlxhDrT"
                  target="_blank"
                  class="kakao"
          ></a>
          <a
                  href="https://www.instagram.com/tsherpa_official/"
                  target="_blank"
                  class="instagram"
          ></a>
          <a
                  href="https://www.facebook.com/T%EC%85%80%ED%8C%8C-315305932501668/"
                  target="_blank"
                  class="facebook"
          ></a>
          <a
                  href="https://blog.naver.com/tsherpabyus"
                  target="_blank"
                  class="blog"
          ></a>
        </div>
      </div>
    </div>
  </div>
  <div class="site_wrap clearfix">
    <div class="site_inner">
      <div class="terms_box">
            <span
            ><a href="https://www.chunjae.co.kr/#/main" target="_blank"
            >천재교육</a
            ></span
            >
        <span
        ><a href="https://chunjaetext.co.kr/" target="_blank"
        >천재교과서</a
        ></span
        >
        <span
        ><a
                href="https://www.tsherpa.co.kr/mo_membership/info_policy.html?tab=policy1"
                target="_blank"
        >이용약관</a
        ></span
        >
        <span
        ><a
                class="point"
                href="https://www.tsherpa.co.kr/mo_membership/info_policy.html?tab=policy2"
                target="_blank"
        >개인정보처리방침</a
        ></span
        >
        <span
        ><a
                href="https://www.tsherpa.co.kr/center/M-noticM.html"
                target="_blank"
        >고객센터</a
        ></span
        >
      </div>
      <div class="select_box">
        <select
                class="form-control"
                onchange="if(this.value) window.open(this.value);"
                title="패밀리 사이트 선택"
        >
          <option value="" selected="">패밀리 사이트</option>
          <option value="https://www.chunjae.co.kr/#/main">천재교육</option>
          <option value="http://www.milkt.co.kr/Main/Main_v4">
            밀크티 초등
          </option>
          <option value="http://mid.milkt.co.kr/">밀크티 중학</option>
          <option value="https://hme.chunjae.co.kr/">
            HME 전국 해법수학 학력평가
          </option>
          <option value="https://mall.chunjae.co.kr/">
            천재교육 쇼핑몰
          </option>
        </select>
      </div>
    </div>
  </div>
  <div class="info_wrap clearfix">
    <div class="box">
      <div class="logo">
        <img
                src="/resource/midhigh/img/common/bg-footer-logo-education.png"
                alt="천재교육 로고"
        />
      </div>
      <div class="text">
        <p>대표 : 강희철, 최정민</p>
        <p>주소 : 서울시 금천구 가산로 9길 54</p>
        <p>사업자 등록번호 : 119 - 81 - 19350</p>
        <p>부가통신사업신고번호 : 016712</p>
      </div>
    </div>
    <div class="box">
      <div class="logo">
        <img
                src="/resource/midhigh/img/common/bg-footer-logo-textbook.png"
                alt="천재교과서 로고"
        />
      </div>
      <div class="text">
        <p>대표 : 박정과, 임형진</p>
        <p>주소 : 서울특별시 금천구 가산디지털1로 16, 2011호(가산동)</p>
        <p>사업자 등록번호 : 119 - 81 - 70643</p>
      </div>
    </div>
    <div class="box">
      <div class="logo">
        <img src="/resource/midhigh/img/common/bg-footer-logo-isms.png" alt="isms 로고"/>
      </div>
      <div class="text">
        <p>인증범위 - 온라인 교육 및 학습지원 서비스 운영</p>
        <p>인증기간 - 2023년 3월 25일 ~ 2026년 3월 24일</p>
      </div>
      <p class="copy">
        copyright© 2021 by chunjae co.ltd all rights reserved.
      </p>
    </div>
  </div>
</div>
<!--//footer-->
</body>
</html>

<style>
    .loading {
        position: fixed;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
        display: none;
        z-index: 200;
        background: rgba(0, 0, 0, 0.6);
    }

    .loading > img {
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
    }
</style>
<div class="loading _loading" id="loading-ani" style="user-select: none">
  <img src="/resource/midhigh/img/etc/loading.gif" alt="로딩중"/>
</div>

<div id="recentlyVideoModalDiv"></div>
<div id="modalDiv"></div>
<div id="copyrightModalDiv"></div>
<div id="teachingBoardUploadDiv"></div>
<div id="certModalFooterDiv"></div>
<!-- 공통 인증 modal -->
<div id="memberChangeModal"></div>
<div id="changeCompletion"></div>

<iframe
        name="hiddenFrame"
        id="hiddenFrame"
        style="
        visibility: hidden;
        position: absolute;
        left: 0;
        top: 0;
        height: 0;
        width: 0;
        border: none;
      "
        src="./saved_resource.html"
></iframe>
<iframe
        name="ssoHiddenFrame"
        id="ssoHiddenFrame"
        style="
        visibility: hidden;
        position: absolute;
        left: 0;
        top: 0;
        height: 0;
        width: 0;
        border: none;
      "
        src="./check_sso.html"
></iframe>

<div
        class="modal fade"
        tabindex="-1"
        role="dialog"
        id="unitSelect"
        aria-modal="true"
>
  <div class="modal-dialog-centered modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <div class="modal-title">교수자료 유출 사례</div>
        <a class="close" data-dismiss="modal" aria-label="Close">
          <img
                  src="/resource/midhigh/img/common/btn-close-big-white.png"
                  alt="닫기버튼"
                  aria-hidden="true"
          />
        </a>
      </div>
      <div class="modal-body evaluation_case">
        <div class="section_case_wrap">
          <p>T셀파의 교수자료는 천재교육의 소중한 자산입니다.</p>
          <p>
            자료 유출로 인한 어려움을 겪지 않도록 선생님들께 부탁 드리며,
            교수자료의 유출사례들을 소개드립니다.
          </p>
        </div>
        <ul class="section_number_wrap">
          <li>
                <span class="num">1</span
                ><span class="d-block sub_title bold"
          >T셀파 정회원으로 선생님들께서 지인분들(학부모, 학원강사)에게
                  유출하시거나 아이디/비밀번호를 공유하여 사용하시는 경우</span
          >
          </li>
          <li>
                <span class="num">2</span
                ><span class="d-block sub_title bold"
          >학생들이 평가지를 학원에 가지고 가서 공유하는 경우</span
          >
          </li>
          <li>
                <span class="num">3</span
                ><span class="d-block sub_title bold"
          >카페, 블로그, 학교 홈페이지 등 인터넷에 무단으로 업로드하는
                  경우</span
          >
          </li>
          <li>
                <span class="num">4</span
                ><span class="d-block sub_title bold"
          >본인이 아닌, 다른 분들에게 아이디/비밀번호를 공유하는
                  경우</span
          >
          </li>
          <li class="info">
                <span
                >* 안전한 개인정보 보호를 위해 주기적으로 비밀번호를
                  변경하시는 것을 권장해 드립니다.</span
                >
          </li>
          <li class="info">
                <span
                >* 공공장소 (PC방, 학교 공용 컴퓨터실) 등에서 사용을 자제하여
                  주십시오.</span
                >
          </li>
        </ul>
        <div class="section_info_wrap">
          <p>
            T셀파의 교수자료의 저작권은 (주)천재교육에 있으므로, 무단으로
            이를 유출하거나 타 사이트에 게재하지 않도록 선생님들의 적극적인
            협조 부탁드립니다.
          </p>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  let userCurri = "C2";
  let eleCnt = 0;
  let mhCnt = 0;

  $(document).ready(function () {
    eventJoinCheck("mh1");
    eventJoinCheck("mh2");
    eventJoinCheck("mh3");
  });

  function cmdCheck() {
    if (!checkUserLoggedIn()) return false;
    if (!check_day()) return false;
    return true;
  }

  function check_day() {
    let toDay = moment().format("YYYY-MM-DD");
    let endDay = moment("2024-03-13").format("YYYY-MM-DD");

    if (toDay <= endDay) {
      return true;
    } else {
      alert("이벤트 기간이 종료되었습니다. 참여에 감사드립니다.");
      return false;
    }
  }

  function eventJoinCheck(title) {
    if (checkUserLoggedIn()) {
      let data = {
        eventId: "1996756", //이벤트 ID
        title: title, //이벤트 참여 종류
      };

      if (data.eventId) {
        $.ajax({
          type: "post",
          url: "/Event/applyEventCheck.do",
          data: data,
          dataType: "json",
          cache: false,
          async: false,
          success: function (response) {
            let result = response.result;
            if (!result) {
              if (title.indexOf("ele") > -1) {
                eleCnt++;
              }
              if (title.indexOf("mh") > -1) {
                mhCnt++;
              }
            }
          },
          error: function (request, status, error) {
            console.error(request, status, error);
          },
        });
      }
    }
  }

  function clickEvent(title) {
    if (cmdCheck()) {
      let data = {
        eventId: "1996756", //이벤트 ID
        title: title, //이벤트 참여 종류
      };

      if (data.eventId) {
        $.ajax({
          type: "post",
          url: "/Event/applyEventCheck.do",
          data: data,
          dataType: "json",
          cache: false,
          async: false,
          success: function (response) {
            let result = response.result;
            if (result == true) {
              applyEvent(title);
            } else {
              alert("이미 참여하셨습니다.");
              if (userCurri == "" || userCurri == "C1") {
                location.href =
                  "https://ele.tsherpa.co.kr/site/event/index.html?eventId=1996756";
              } else if (userCurri == "C2" || userCurri == "C3") {
                location.href =
                  "https://mh.tsherpa.co.kr/site/event/index.html?eventId=1996756";
              } else {
                location.href =
                  "https://www.tsherpa.co.kr/site/event/1996756/index.html";
              }
            }
          },
          error: function (request, status, error) {
            console.error(request, status, error);
          },
        });
      }
    }
  }

  function applyEvent(title) {
    let data = {
      eventId: "1996756",
      modelId: "event_enter_09",
      tag: "",
      url: "",
      cover: "",
      title: title,
      description: "",
      type: "N", //중복참여 여부(Y:중복참여 가능,N:중복참여 불가능)
      cnt: 0, //선착순 이벤트 참여 가능 인원
    };

    if (data.eventId) {
      $.ajax({
        type: "post",
        url: "/Event/applyEventShorts.do",
        data: data,
        dataType: "json",
        cache: false,
        async: false,
        success: function (response) {
          if (response.message == "응모 되었습니다.") {
            if (userCurri == "" || userCurri == "C1") {
              alert(
                "[신학기 스탬프 미션 이벤트] 스탬프 총 3개 중 " +
                (eleCnt + 1) +
                "개 수집되었습니다."
              );
              location.href =
                "https://ele.tsherpa.co.kr/site/event/index.html?eventId=1996756";
            } else if (userCurri == "C2" || userCurri == "C3") {
              alert(
                "[신학기 스탬프 미션 이벤트] 스탬프 총 3개 중 " +
                (mhCnt + 1) +
                "개 수집되었습니다."
              );
              location.href =
                "https://mh.tsherpa.co.kr/site/event/index.html?eventId=1996756";
            } else {
              location.href =
                "https://www.tsherpa.co.kr/site/event/1996756/index.html";
            }
          } else if (response.message == "이미 응모하셨습니다.") {
            alert("이미 참여하셨습니다.");
          }
        },
        error: function (request, status, error) {
          console.error(request, status, error);
          alert("오류가 발생했습니다.");
        },
      });
    }
  }

  function closePopup(day) {
    if (day) {
      let date = new Date();
      date.setDate(date.getDate());
      let exdate = moment(date).format("YYYY-MM-DD");
      Common.setCookie("testbank_stamp_banner", exdate, day);
      $("#stamp-banner").hide();
    }
  }

  $(document).ready(function () {
    $("#stamp-banner").hide();

    let exdate = Common.getCookie("testbank_stamp_banner") || "";
    let today = new Date().toISOString().substring(0, 10);
    if (!exdate || exdate < today) {
      $("#stamp-banner").show();
    }
  });
</script>

<!-- 240130 스탬프 이벤트 배너 (전 페이지 위치 공통) - body 안에 추가 부탁드립니다 -->
<div
        id="stamp-banner"
        class=""
        style="
        position: absolute;
        top: 40px;
        right: 100px;
        z-index: 1000;
        width: 240px;
        height: 240px;
        display: none;
      "
>
  <a
          href="javascript:void(0);"
          class="close"
          title="닫기"
          aria-label="Close"
          onclick="closePopup(1);"
          style="
          position: absolute;
          right: 0px;
          top: 0;
          width: 70px;
          height: 70px;
          z-index: 10;
        "
  ></a>
  <a
          href="javascript:void(0);"
          onclick="clickEvent('mh1');"
          title="이벤트 응모"
          style="
          position: absolute;
          left: 0;
          top: 0;
          width: 100%;
          height: 100%;
          z-index: 1;
        "
  >
    <img
            src="/resource/midhigh/img/etc/stamp-banner.png"
            alt="스탬프 이미지"
            style="width: 100%; height: 100%"
    />
  </a>
</div>
<!-- // 240130 스탬프 -->

<script
        type="text/javascript"
        id=""
        charset="UTF-8"
        src="/resource/js/kp.js"
></script>
<script type="text/javascript" id="">
  (function (a, e, b, f, g, c, d) {
    a[b] =
      a[b] ||
      function () {
        (a[b].q = a[b].q || []).push(arguments);
      };
    c = e.createElement(f);
    c.async = 1;
    c.src = "https://www.clarity.ms/tag/" + g + "?ref\x3dgtm2";
    d = e.getElementsByTagName(f)[0];
    d.parentNode.insertBefore(c, d);
  })(window, document, "clarity", "script", "cz3xm7bhhr");
</script>
<script type="text/javascript" id="">
  kakaoPixel("3767804930893854870").pageView(
    "\uc911\uace0\ub4f1\ud2f0\uc140\ud30c"
  );
</script>
</body>
</html>