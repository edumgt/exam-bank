<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="ko" class="mobile">
<iframe allow="join-ad-interest-group" data-tagging-id="G-FX3SQDR374" data-load-time="1711257125527" height="0"
        width="0" style="display: none; visibility: hidden;"
        src="https://td.doubleclick.net/td/ga/rul?tid=G-FX3SQDR374&amp;gacid=2080978960.1711196912&amp;gtm=45je43k0v885837650za200&amp;dma=0&amp;gcd=13l3l3l3l1&amp;npa=0&amp;pscdl=noapi&amp;aip=1&amp;fledge=1&amp;z=1426191886"></iframe>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

  <title>T셀파 - 오직 선생님만을 위한 교수학습 무료지원</title>

  <link rel="stylesheet" type="text/css"
        href="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/main/assets/css/common.css">
  <link rel="stylesheet" type="text/css"
        href="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/main/assets/css/pages.css?v=20240214">

  <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/jquery.min.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/jquery.mCustomScrollbar.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/bootstrap.min.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/bootstrap-datepicker.min.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/swiper.min.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/moment.min.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/moment.locale.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/lodash.min.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/js.cookie.min.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/js.storage.min.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/handlebars.min.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/alpine.min.js"
          type="module"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/lib/alpine-ie11.min.js"
          nomodule=""></script>

  <script src="https://sso.chunjae.co.kr:446/include/js/min/auth-latest.min.js"></script>
  <script type="text/javascript" src="https://sso.chunjae.co.kr:446/include/js/jquery.whensync.js"></script>

  <script src="https://sso.chunjae.co.kr:446/include/js/min/queryencrypt-latest.min.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/common/assets/js/legacy_common.js"></script>
  <script src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/main/assets/js/common.js?v=20221220"></script>

  <script>
    var currentDevice = 'DESKTOP';
    var mainDomain = "https://www.tsherpa.co.kr/";
    var ourClassUrl = "https://class.tsherpa.co.kr/";

    var siteAttribute = {};
    siteAttribute['logo'] = '/resource/midhigh/img/common/logo-sherpa.png';
    siteAttribute['square_logo'] = '';
    siteAttribute['root_path'] = '/';

    //통합회원 체크
    window.onload = function () {
      if (false) {
        if (Common.getCookie("popupYN") != "N") {
          if (Common.getCookie("loginCheck") == "Y") {
            integratedChange()
          }
        }
        Common.setCookie("loginCheck", "N");
      }
    }

    function checkUserLoggedIn(returnUrl) {
      if (!false) {
        alert('로그인 후 서비스를 이용하실 수 있습니다.');
        if (returnUrl != undefined) {
          location.href = mainDomain + '/login.html?returnUrl=' + encodeURIComponent(returnUrl);
        }
      }
      return false;
    }

    // 유치 X && 초중고정회원, 교대생, 초중고관리자, 초중고영업
    function newRegularMember() {
      return false;
    }

    // 유치, 교대생, 중고등준회원, 정회원, 영업 X && 초등정회원, 영업, 초중고관리자 (우리반T셀파, 알림장 등)
    function newRegularMember2() {
      return false;
    }

    function isUserLogin() {
      return false;
    }

    function returnMemberType() {
      return '';
    }

    function checkMenuPermission(menu) {
      if (!isUserLogin() && (menu == 'curri' || menu == 'community' || menu == 'exam' || menu == 'creativity')) {
        checkUserLoggedIn(true);
      }
    }

    function memberCurriCheck(returnUrl) {
      alert('로그인 후에 이용할 수 있는 서비스입니다.');
      parent.location.href = 'https://www.tsherpa.co.kr/login.html?returnUrl=' + encodeURIComponent(parent.location.href);
    }

    //통합회원 체크 및 전환
    function integratedChange() {
      if (false) {
        let userName = '';
        let encryption = encodeURIComponent(queryEncrypt.encrypt(userName));
        $.get("https://sso.chunjae.co.kr:446/api/member/JoinedSite", {
          userID: encryption
        }).done(function (Status) {
          if (Status.Result.Items[0].CreDate < "2018") {
            if (Status.Result.Itemsummary.TotalCnt < 3) {
              let url = "/modal/membership-integration.html";
              $("#memberChangeModal").load(url, function (response, status, xhr) {
                $("#memberChange").modal('show');
              });
            }
          }
        })
      }
    }

    // 특정 페이지 재인증 처리
    function reAuth(url) {
      location.href = "/mo_membership/password.html?reAuthUrl=" + encodeURIComponent(url);
    }
  </script>

  <script>
    $.ajax({
      url: "https://sso.chunjae.co.kr:446/api/auth/Validation",
      data: {sessionData: "0t9j9jTdDH/59/j1vd85xCqPdrFguWxhmGqWCNazNxW2XOzb0p6xmnd56viF4kBM1krEeauDwrCyHfNk5W/WgA=="},
      dataType: 'json',
      cache: false,
      success: function (data) {
        if (data && data.Result) {
          let Items = data.Result.Items;
          $.ajax({
            url: "https://sso.chunjae.co.kr:446/api/auth/Authorize?Token=" + Items.Token,
            dataType: 'text',
            xhrFields: {withCredentials: true},
            cache: false,
            success: function (data) {
              let reg = /_ChunjaeSSOEncData = '(.*)';/
              let ssoData = reg.exec(data)[1];
              if (ssoData) {
                $.post("/ssoLogin.do", {encData: ssoData, isReconn: true}).done(function (data) {
                  if (data.success) {
                    if (isLoginPage()) {
                      alert("통합인증 로그인으로 재접속 합니다.");
                      location.href = "https://mh.tsherpa.co.kr/";
                    } else {
                      if (!sessionStorage.getItem("tsherpa_sso_reload")) {
                        sessionStorage.setItem("tsherpa_sso_reload", "on");
                        location.reload(true);
                      }
                    }
                  } else {
                    alert(data.message);
                  }
                });
              } else {
              }
            },
            error: function (e) {
              console.error(e);
            }
          });
        }
      },
      error: function (e) {
        console.error(e);
      }
    });

    function isLoginPage() {
      return location.pathname == '/login.html'
        || location.pathname == '/mo_membership/login.html'
        || location.pathname == '/mo_membership/class_app_login.html'
        || location.pathname.startsWith("/mo_membership/signup");
    }

    async function isSsoStudentLogout() {
      const response1 = await fetch("https://sso.chunjae.co.kr:446/api/auth/Validation?sessionData=" + encodeURIComponent('0t9j9jTdDH/59/j1vd85xCqPdrFguWxhmGqWCNazNxW2XOzb0p6xmnd56viF4kBM1krEeauDwrCyHfNk5W/WgA=='), {
        method: 'GET',
        cache: 'no-cache',
        headers: {
          'Accept': 'application/json'
        }
      });
      const data1 = await response1.json();
      if (data1 && data1.Result) {
        const Items = data1.Result.Items;
        const response2 = await fetch("https://sso.chunjae.co.kr:446/api/auth/AuthorizeStudent?Token=" + Items.Token, {
          method: 'GET',
          cache: 'no-cache',
          credentials: 'include', // This is equivalent to xhrFields: {withCredentials: true}
          headers: {
            'Accept': 'text/plain'
          }
        });
        const data2 = await response2.text();
        const reg = /_ChunjaeSSOEncData = '(.*)';/
        const ssoData = reg.exec(data2)[1];
        if (ssoData) {
          alert('다른 SSO 세션이 존재하여, 로그아웃 하겠습니다.');
          const url = location.href.replace(location.search, '');
          document.location.href = "https://class.tsherpa.co.kr//tclass/logout?returnUrl=" +
            encodeURIComponent("https://sso.chunjae.co.kr:446/api/auth/logout?returnUrl=" +
              encodeURIComponent(url + encodeURIComponent(location.search)));
          return true;
        }
      }
      return false;
    }
  </script>

</head>

<body>
<div class="mo_membership">
  <!-- header -->

  <script>
    ;(function ($) {
      $.fn.toJSON = function () {
        let $elements = {};
        let $form = $(this);
        $form.find('input, select, textarea').each(function () {
          let name = $(this).attr('name')
          let type = $(this).attr('type')
          if (name) {
            let $value;
            if (type == 'radio') {
              $value = $('input[name=' + name + ']:checked', $form).val()
            } else if (type == 'checkbox') {
              $value = $(this).is(':checked')
            } else {
              $value = $(this).val()
            }
            $elements[$(this).attr('name')] = $value
          }
        });
        return $elements;
      };
      $.fn.fromJSON = function (data) {
        let $form = $(this)
        $.each(data, function (key, value) {
          let $elem = $('[name="' + key + '"]', $form)
          let type = $elem.first().attr('type')
          if (type == 'radio') {
            $('[name="' + key + '"][value="' + value + '"]').prop('checked', true)
          } else if (type == 'checkbox' && (value == true || value == 'true')) {
            $('[name="' + key + '"]').prop('checked', true)
          } else {
            $elem.val(value)
          }
        })
      };
    }(jQuery));

    function setSessionStorage(key, add) {
      let src = sessionStorage.getItem(key);
      let data = src ? JSON.parse(src) : {};
      sessionStorage.setItem(key, JSON.stringify(Object.assign(data, add)));
    }

    function getSessionStorage(key) {
      let data = JSON.parse(sessionStorage.getItem(key));
      return data ? data : null;
    }
  </script>

  <div class="mo_membership_header" style="padding-right: 40px;">
    <h1 class="brand" style="justify-content: space-between">
      <a href="https://mh.tsherpa.co.kr/"><span class="ir_su">T셀파</span></a>
      <button onclick="location.href='/'" style="background: #ffffff; border: 0px;">
        문제은행<img
              src="/resource/midhigh/img/testbank_2023/beta_i.png"
              alt="베타"
              class="beta-i"
      />
      </button>

    </h1>
  </div>
  <!-- contents -->
  <div class="mo_membership_contents">
    <div class="login_wrap">
      <h2 class="tit_h2">로그인</h2>
      <div class="welcome_bold">
        T셀파 문제은행 서비스에 오신 선생님들을 환영합니다.
      </div>
      <p class="welcome">
        T셀파에서는 선생님들의 역량 강화 및 수업에<br>
        도움을 드리기 위해 최선을 다하도록 하겠습니다.
      </p>
      <div class="login_box">
        <ul class="login_field">
          <li>
            <input type="text" name="username" title="아이디 입력" placeholder="아이디">
          </li>
          <li>
            <input type="password" name="password" title="비밀번호 입력" placeholder="비밀번호">
          </li>
        </ul>
        <div class="form_check">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="rememberUserId">
            <label class="custom-control-label" for="rememberUserId">아이디 저장</label>
          </div>
          <ul class="util_link">
            <li><a href="form_find_id.html?tab=id">아이디 찾기</a></li>
            <li><a href="form_find_id.html?tab=pw">비밀번호 찾기</a></li>
            <li><a href="signup.html">회원가입</a></li>
          </ul>
        </div>
        <div class="full-box">
          <a a="" href="javascript: void(0)" onclick="login();" class="btn btn-xl btn_login">로그인</a>
        </div>
      </div>
    </div>
  </div>

  <!-- footer -->
  <style>
      .loading {
          position: fixed;
          width: 100%;
          height: 100%;
          left: 0;
          top: 0;
          display: none;
          z-index: 2000;
          background: rgba(0, 0, 0, 0.6);
      }

      .loading > img {
          position: absolute;
          left: 50%;
          top: 50%;
          transform: translate(-50%, -50%);
      }

      .mo_membership_footer .list_family li:hover a {
          font-size: 17px;
      }
  </style>

  <div class="mo_membership_footer">
    <div class="select_familysite">
      <a href="javascript: void(0);" class="btn_familysite">T셀파 패밀리 사이트</a>
      <ul class="list_family">
        <li><a href="https://www.chunjae.co.kr/" target="_blank">천재교육</a></li>
        <li><a href="https://www.milkt.co.kr/" target="_blank">밀크티 초등</a></li>
        <li><a href="https://mid.milkt.co.kr/" target="_blank">밀크티 중학</a></li>
        <li><a href="https://hme.chunjae.co.kr/" target="_blank">HME 전국 해법수학 학력평가</a></li>
        <li><a href="https://mall.chunjae.co.kr/" target="_blank">천재교육 쇼핑몰</a></li>
      </ul>
    </div>

    <ul class="terms">
      <li><a href="info_policy.html?tab=policy1">이용약관</a></li>
      <li><a href="info_policy.html?tab=policy2" style="color:#000">개인정보처리방침</a></li>
    </ul>

    <ul class="group_partners">
      <li>
        <strong>천재교육</strong>
        대표 : 강희철, 최정민 ㅣ 주소 : 서울시 금천구 가산로 9길 54 <br>
        사업자등록번호 : 119-81-19350 ㅣ 부가통신사업신고번호 : 016712
      </li>
      <li>
        <strong>천재교과서</strong>
        대표 : 박정과, 임형진 ㅣ <span class="address">주소 : 서울시 금천구 가산디지털1로 16, 2011호(가산동)</span><br>
      </li>
    </ul>

    <p class="copyright">
      COPYRIGHT© 2022 BY CHUNJAE CO.LTD ALL RIGHTS RESERVED.
    </p>
  </div>

  <div class="loading _loading" id="loading-ani" style="display: none">
    <img src="//cdata2.tsherpa.co.kr/tsherpa/Tsherpa2021/resource/ele/assets/img/etc/loading.gif" alt="로딩중">
  </div>

  <script>
    // 패밀리사이트 박스 클릭시
    $(".btn_familysite").on("click", function (e) {
      e.preventDefault();
      $(this).toggleClass("down");
      $(this).next(".list_family").slideToggle(250);
    })
  </script>
</div>


<script>

  function doLogin() {
    let loginUrl = "/login";
    if (location.pathname.indexOf("/login") < 0) {
      loginUrl += "?returnUrl=" + encodeURIComponent(location.href);
    }
    location.href = loginUrl;
  }

  async function oauthLogin(type) {
    if (await isSsoStudentLogout()) {
      return;
    }
    let returnUrl = encodeURIComponent("https://mh.tsherpa.co.kr/");
    location.href = "/oauth2/login/" + type + "?returnUrl=" + returnUrl;
  }

  function processLoginSuccess(response, id, pwd) {
    const doRedirect = (ssoLoginData) => {
      const midhighUrl = 'https://mh.tsherpa.co.kr/';
      const returnUrl = "https://mh.tsherpa.co.kr/";
      let subReturnUrl = "";
      const geniaDomain = "geniatutor";
      //지니아튜터에서 로그인 후 삼성, 사파리 브라우저에서 로그인 되도록 변경 2024.02.22 채수현
      if (returnUrl.indexOf(geniaDomain) > -1) {
        const userkey = ssoLoginData.user.userKey + "^TSHERPA^" + (new Date()).getTime();
        subReturnUrl = "/uat/uia/loginTsherpaAppProfSso.do?userkey=" + encodeURIComponent(queryEncrypt.encrypt(userkey));
      }
      if (!(returnUrl.startsWith(midhighUrl) && (ssoLoginData.user.curri === 'C2' || ssoLoginData.user.curri === 'C3'))) {
        location.replace(returnUrl + subReturnUrl);
        return;
      }
      $.get("/pinCurri/getMainTpinCurri?siteId=7")
        .then((result) => {
          if (result?.mainTpinCurri?.categoryId) {
            location.replace(midhighUrl + "curri/schoolbookdata.html?id=" + result.mainTpinCurri.categoryId);
          } else {
            location.replace(returnUrl + subReturnUrl);
          }
        })
        .catch(() => location.replace(returnUrl + subReturnUrl));
    };

    let isIE11 = !!navigator.userAgent.match(/Trident.*rv:11\./);
    if (isIE11) {
      let scriptUrl = 'https://sso.chunjae.co.kr:446/api/auth/authenticate?SiteName=TSHERPA&Token=' + response.Items.Token;
      let s = document.createElement("script");
      s.type = "text/javascript";
      s.src = scriptUrl;
      $("head").append(s);
      let params = {
        token: response.Items.Token, /* ★ 1. Token 정보는 필수사항입니다. ★ */
        id: queryEncrypt.encrypt(id), /* 아래 항목들은 각 사이트에 맞게 적용*/
        pwd: queryEncrypt.encrypt(pwd),
        openerType: "pagelogin",
        returnUrl: encodeURIComponent(queryEncrypt.encrypt("https://mh.tsherpa.co.kr/")),
        encData: response.Items.SSOEncData,
        oReturnUrl: "",
        siteInfoIncorrect: "0"
      };
      $.post("/ssoLogin.do", params)
        .done(function (data) {
          if (data.success) {
            setTimeout(function () {
              Common.setCookie("loginCheck", "Y")
              doRedirect(data);
            }, 600)
          } else {
            alert(data.message);
          }
        });
    } else {
      $.getScript("https://sso.chunjae.co.kr:446/api/auth/authenticate?SiteName=TSHERPA&Token=" + response.Items.Token).done(function (script, textStatus) {
        let params = {
          token: response.Items.Token, /* ★ 1. Token 정보는 필수사항입니다. ★ */
          id: queryEncrypt.encrypt(id), /* 아래 항목들은 각 사이트에 맞게 적용*/
          pwd: queryEncrypt.encrypt(pwd),
          openerType: "pagelogin",
          returnUrl: encodeURIComponent(queryEncrypt.encrypt("https://mh.tsherpa.co.kr/")),
          encData: response.Items.SSOEncData,
          oReturnUrl: "",
          siteInfoIncorrect: "0"
        };
        $.post("/ssoLogin.do", params)
          .done(function (data) {
            if (data.success) {
              Common.setCookie("loginCheck", "Y")
              doRedirect(data);
            } else {
              alert(data.message);
            }
          });
      });
    }
  }

  async function login() {
    if (await isSsoStudentLogout()) {
      return;
    }
    let id = $("input[name='username']").val();
    let pwd = $("input[name='password']").val();
    if (!id || !pwd) {
      alert("아이디나 비밀번호가 입력되지 않았습니다.");
      return false;
    }
    let params = {id: id, pwd: pwd};
    $.ajax({
      url: "/login",
      data: JSON.stringify(params),
      contentType: "application/json",
      dataType: 'json',
      cache: false,
      async: false,
      success: function (res) {
        switch (res.Status) {
          case "success":
            // 아이디 기억하기
            if ($("input:checkbox[id='rememberUserId']").is(":checked")) {
              Storages.localStorage.set("loginuserid", id);
            } else {
              Storages.localStorage.remove("loginuserid");
            }
            // redirect
            location.replace(location.href);
            break;
          case "fail":
            alert(
              "정보를 불러오는데 문제가 발생하였습니다.\n다시 시도해주세요."
            );
            break;
          default:
            alert(
              "정보를 불러오는데 문제가 발생하였습니다.\n다시 시도해주세요."
            );
            break;
        }
      },
      error: function (xhr, status, error) {
        window.location.href = "/error/error";
      }
    });

    if ($("input:checkbox[id='rememberUserId']").is(":checked")) {
      Storages.localStorage.set('loginuserid', id);
    } else {
      Storages.localStorage.remove('loginuserid');
    }
  }

  $(function () {
    let userid = Storages.localStorage.get('loginuserid');
    if (userid) {
      $("input[name='username']").val(userid);
      $("input:checkbox[id='rememberUserId']").prop("checked", true);
    }
    $('input[name=username]').on("keypress", function (e) {
      if (e.keyCode == 13) {
        $('input[name=password]').focus();
      }
    });
    $('input[name=password]').on("keypress", function (e) {
      if (e.keyCode == 13) {
        login();
      }
    });
  });
</script>

</body>
</html>