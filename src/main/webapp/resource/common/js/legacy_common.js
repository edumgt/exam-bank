//document.domain = "tsherpa.co.kr";


Common = {}


//**********************************************************************************************************************************
//* Common.init : 이벤트의 핸들러를 등록
//**********************************************************************************************************************************
Common.init = function () {

    window.onload = OnLoadCallBack;
    window.onbeforeunload = OnBeforeUnLoadCallBack;
    window.onunload = OnUnLoadCallBack;


    if (navigator.userAgent.indexOf('Firefox') >= 0) {
        (function () {
            var events = ["mousedown", "mouseover", "mouseout", "mousemove", "mousedrag", "click", "dblclick", "keypress"];

            for (var i = 0; i < events.length; i++) {
                window.addEventListener(events[i], function (e) {
                    window.event = e;
                }, true);
            }
        }());
    }


};


//**********************************************************************************************************************************
//* Common.Delegate Namespace 구현
//*
//* Common.Delegate.createDelegate : Delegate 생성
//* -> delegateInstance (Delegate의 인스턴스)
//* -> pointingMethod (Delegate가 가르킬 함수의 인스턴스)
//**********************************************************************************************************************************
Common.Delegate = {};

Common.Delegate.createDelegate = function (delegateInstance, pointingMethod) {

    return function () {

        return pointingMethod.apply(delegateInstance, arguments);

    }

}


//**********************************************************************************************************************************
//* Common.PageLifecycle Namespace 구현
//*
//* Common.PageLifecycle.OnLoadHandler : onload 이벤트 헨들러
//* -> Page_Load()가 정의되어 있으면 호출하고, 정의되어 있지 않으면 호출하지 않음
//*
//* Common.PageLifecycle.OnBeforeUnLoadHandler : onbeforeunload 이벤트 헨들러
//* -> Page_BeforeUnLoad()가 정의되어 있으면 호출하고, 정의되어 있지 않으면 호출하지 않음
//*
//* Common.PageLifecycle.OnUnLoadHandler : onunload 이벤트 헨들러
//* -> Page_UnLoad()가 정의되어 있으면 호출하고, 정의되어 있지 않으면 호출하지 않음
//**********************************************************************************************************************************
Common.PageLifecycle = {};

Common.PageLifecycle.OnLoadHandler = function () {

    if (window.Page_Load) {
        window.Page_Load();
    }

}

Common.PageLifecycle.OnBeforeUnLoadHandler = function () {

    if (window.Page_BeforeUnLoad) {
        window.Page_BeforeUnLoad();
    }

}

Common.PageLifecycle.OnUnLoadHandler = function () {

    if (window.Page_UnLoad) {
        window.Page_UnLoad();
    }

}


//**********************************************************************************************************************************
//* Delegate 설정
//**********************************************************************************************************************************
OnLoadCallBack = Common.Delegate.createDelegate(this, Common.PageLifecycle.OnLoadHandler);
OnBeforeUnLoadCallBack = Common.Delegate.createDelegate(this, Common.PageLifecycle.OnBeforeUnLoadHandler);
OnUnLoadCallBack = Common.Delegate.createDelegate(this, Common.PageLifecycle.OnUnLoadHandler);


//**********************************************************************************************************************************
//* 초기화 시작
//**********************************************************************************************************************************
Common.init();


//**********************************************************************************************************************************
//* 새로고침 / 백스페이스 막기
//**********************************************************************************************************************************
//document.onkeydown = function(e) {

//    var keycode = navigator.userAgent.indexOf('Firefox') >= 0 ? e.which : e.keyCode;

//    if ((keycode == 116) || (e.ctrlKey == true && keycode == 82)) {
//        alert("새로고침[F5] 키는 사용하실 수 없습니다.     ");

//        return false;
//    }

//}


//**********************************************************************************************************************************
//* A태그의 포커스를 제거
//**********************************************************************************************************************************
//Common.bluring = function() {

//    if (event.srcElement.tagName == "A") {
//        document.body.focus();
//    }

//}

//document.onfocusin = Common.bluring;


//**********************************************************************************************************************************
//* Format형식으로 사용
//**********************************************************************************************************************************
Common.format = function (text) {

    if (arguments.length <= 1) {
        return text;
    }


    var tokenCount = arguments.length - 2;

    for (var token = 0; token <= tokenCount; token++) {
        text = text.replace(new RegExp("\\{" + token + "\\}", "gi"), arguments[token + 1]);
    }

    return text;

}


// 주석처리 (이건 자바 메서드 오버로딩이 아님..)
// //**********************************************************************************************************************************
// //* 팝업 띄우기1
// //**********************************************************************************************************************************
// Common.openPop = function (width, height, url, scroll) {
//     if(window.currentDevice == 'MOBILE'){
//         window.open(url)
//         return;
//     }
//
//     var strURL, strName, strFeature;
//     var x, y;
//
//     x = (screen.width - width) / 2;
//     y = (screen.height - height) / 2;
//
//     strURL = url;
//     strName = "win" + Math.round(Math.random() * 100000);
//     strFeature = "left=" + x + ", top=" + y + ", width=" + width + ", height=" + height + ", menubar=no, status=no, location=no, resizable=no, toolbar=no, scrollbars=" + scroll;
//
//     console.log("before open win " + Date.now())
//     var p = window.open(strURL, strName, strFeature);
//     console.log("after open win" + Date.now())
//     p.focus();
// }

// 주석처리 (이건 자바 메서드 오버로딩이 아님..)
// //**********************************************************************************************************************************
// //* 팝업 띄우기2
// //**********************************************************************************************************************************
// Common.openPop = function (width, height, url, scroll, name) {
//     if(window.currentDevice == 'MOBILE'){
//         window.open(url)
//         return;
//     }
//     var strURL, strFeature;
//     var x, y;
//
//     x = (screen.width - width) / 2;
//     y = (screen.height - height) / 2;
//
//     strURL = url;
//     strFeature = "left=" + x + ", top=" + y + ", width=" + width + ", height=" + height + ", menubar=no, status=no, location=no, toolbar=no, resizable=no, scrollbars=" + scroll;
//     var win = window.open(strURL, name, strFeature);
//     win.focus();
//
// }


//**********************************************************************************************************************************
//* 팝업 띄우기3
//**********************************************************************************************************************************
Common.openPop = function (width, height, url, scroll, name, resize) {
    resize = resize || "no";
    name = name || ("win" + Math.round(Math.random() * 100000));

    if (window.currentDevice == 'MOBILE') {
        window.open(url, name)
    } else {
        let x = (screen.width - width) / 2;
        let y = (screen.height - height) / 2;
        let strFeature = "left=" + x + ", top=" + y + ", width=" + width + ", height=" + height + ", menubar=no, status=no, location=no, resizable=" + resize + ", toolbar=no, scrollbars=" + scroll;
        let isIE11 = !!navigator.userAgent.match(/Trident.*rv\:11\./);
        if (isIE11) {
            let win = window.open(url, '_blank', strFeature);
            win.focus();
        } else {
            window.open(url, name, strFeature);
        }
    }
}


//**********************************************************************************************************************************
//* 플래쉬 로드
//**********************************************************************************************************************************
Common.swfobject = function (url, width, height) {

    document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0" width="' + width + 'px" height="' + height + 'px" ALIGN="top">');
    document.write('<param name="movie" value="' + url + '">');
    document.write('<param name="quality" value="high">');
    document.write('<param name="wmode" value="transparent">');
    document.write('<param name="bgcolor" value="#000000">');
    document.write('<param name="allowScriptAccess" value="always" />');
    document.write('<embed src="' + url + '" quality="high" bgcolor="#000000" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" allowScriptAccess="always" wmode="transparent" ALIGN="top" width="' + width + 'px" height="' + height + 'px"></embed>');
    document.write('</object>');

}


//**********************************************************************************************************************************
//* 래프트플래시 로드
//**********************************************************************************************************************************
Common.FlashObject = function (swf, width, height, bgcolor, id, flashvars, loop) {

    var strFlashTag = String();
    var protocol = location.href.split("://")[0];

    if (navigator.appName.indexOf("Microsoft") != -1) {
        strFlashTag += '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" ';
        strFlashTag += 'codebase="' + protocol + '://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=version=10,0,0,0" ';
        strFlashTag += 'id="' + id + '" width="' + width + '" height="' + height + '">';
        strFlashTag += '<param name="movie" value="' + swf + '"/>';

        if (flashvars != null) {
            strFlashTag += '<param name="flashvars" value="' + flashvars + '"/>'
        }

        if (loop != null) {
            strFlashTag += '<param name="loop" value="' + loop + '"/>'
        }

        strFlashTag += '<param name="quality" value="best"/>';
        strFlashTag += '<param name="bgcolor" value="' + bgcolor + '"/>';
        strFlashTag += '<param name="menu" value="false"/>';
        strFlashTag += '<param name="salign" value="LT"/>';
        strFlashTag += '<param name="scale" value="noscale"/>';
        strFlashTag += '<param name="wmode" value="transparent"/>';
        strFlashTag += '<param name="allowScriptAccess" value="always"/>';
        strFlashTag += '</object>';
    } else {
        strFlashTag += '<embed src="' + swf + '" ';
        strFlashTag += 'quality="best" ';
        strFlashTag += 'bgcolor="' + bgcolor + '" ';
        strFlashTag += 'width="' + width + '" ';
        strFlashTag += 'height="' + height + '" ';
        strFlashTag += 'menu="false" ';
        strFlashTag += 'scale="noscale" ';
        strFlashTag += 'id="' + id + '" ';
        strFlashTag += 'salign="LT" ';
        strFlashTag += 'wmode="transparent" ';
        strFlashTag += 'allowScriptAccess="always" ';
        if (flashvars != null) {
            strFlashTag += 'flashvars="' + flashvars + '" '
        }

        if (loop != null) {
            strFlashTag += 'loop="' + loop + '" '
        }

        strFlashTag += 'type="application/x-shockwave-flash" ';
        strFlashTag += 'pluginspage="' + protocol + '://www.macromedia.com/go/getflashplayer">';
        strFlashTag += '</embed>';
    }

    document.write(strFlashTag);
}


Common.flash = function (swf, width, height, flashvars, base) {

    var strFlashTag = String();

    if (navigator.appName.indexOf("Microsoft") != -1) {
        strFlashTag += '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" ';
        strFlashTag += 'codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=version=10,0,0,0" ';
        strFlashTag += 'width="' + width + '" height="' + height + '">';
        strFlashTag += '<param name="movie" value="' + swf + '"/>';
        strFlashTag += '<param name="flashvars" value="' + flashvars + '"/>';
        strFlashTag += '<param name="base" value="' + base + '"/>';
        strFlashTag += '<param name="quality" value="best"/>';
        //      strFlashTag += '<param name="bgcolor" value="' + bgcolor + '"/>';
        strFlashTag += '<param name="menu" value="false"/>';
        //        strFlashTag += '<param name="salign" value="LT"/>';
        strFlashTag += '<param name="scale" value="noscale"/>';
        strFlashTag += '<param name="wmode" value="transparent"/>';
        strFlashTag += '<param name="allowScriptAccess" value="always"/>';
        strFlashTag += '</object>';
    } else {
        strFlashTag += '<embed src="' + swf + '" ';
        strFlashTag += 'quality="best" ';
        //      strFlashTag += 'bgcolor="' + bgcolor + '" ';
        strFlashTag += 'width="' + width + '" ';
        strFlashTag += 'height="' + height + '" ';
        strFlashTag += 'base="' + base + '" ';
        strFlashTag += 'menu="false" ';
        strFlashTag += 'scale="noscale" ';
        //        strFlashTag += 'salign="LT" ';
        strFlashTag += 'wmode="transparent" ';
        strFlashTag += 'allowScriptAccess="always" ';
        if (flashvars != null) {
            strFlashTag += 'flashvars="' + flashvars + '" '
        }

        strFlashTag += 'type="application/x-shockwave-flash" ';
        strFlashTag += 'pluginspage="http://www.macromedia.com/go/getflashplayer">';
        strFlashTag += '</embed>';
    }

    document.write(strFlashTag);

}


resizeElement = function (gubun) {

    if (gubun == "menu_over") {
        $("#top1").css("height", 350);
        //document.getElementById('top1').style.height = 350 + 'px';
    }

    if (gubun == "menu_out") {
        $("#top1").css("height", 110);
        //document.getElementById('gnb').style.height = 110 + 'px';
    }

}


//**********************************************************************************************************************************
//* 텍스트 값이 빈 값인지를 검사
//**********************************************************************************************************************************
Common.isempty = function (text) {

    var isEmpty = false;

    if (text.replace(/ /gi, "") == "") {
        isEmpty = true;
    }

    return isEmpty;

}


//**********************************************************************************************************************************
//* 텍스트 값이 숫자인지를 검사
//**********************************************************************************************************************************
Common.isnumber = function (text) {

    var isnumber = false;
    var regTid = /^[0-9]+$/;
    var patten = eval(regTid);

    if (patten.test(text)) {
        isnumber = true;
    }

    return isnumber;

}


//**********************************************************************************************************************************
//* 텍스트에 태그가 포함되어 있는제 검사
//**********************************************************************************************************************************
Common.isintag = function (text) {

    var isIncludeTag = false;
    var removeTagtext = text.replace(/<[^<]*[^>]*>/gi, "");

    if (text.length != removeTagtext.length) {
        isIncludeTag = true;
    }

    return isIncludeTag;

}


//**********************************************************************************************************************************
//* 텍스트에 특정문자열 전체 replace하기
//**********************************************************************************************************************************
Common.replaceall = function (text, searchtext, replacetext) {

    return text.split(searchtext).join(replacetext);

}

//**********************************************************************************************************************************
//*  숫자를 원하는 자리수도 만들기
//*  leadingZeros(7, 2) -> 7을 07로 변환
//*  leadingZeros(7, 3) -> 7을 007로 변환
//**********************************************************************************************************************************
Common.leadingZeros = function (date, num) {
    var zero = '';
    date = date.toString();

    if (date.length < num) {
        for (i = 0; i < num - date.length; i++)
            zero += '0';
    }
    return zero + date;
}


//**********************************************************************************************************************************
//* 이미지 원본 띄우기
//**********************************************************************************************************************************
Common.openOriginImage = function (path) {
    //alert(decodeURIComponent(path));
    var newpath = decodeURIComponent(path);

    srcImg = new Image();
    clientWidth = screen.width;
    clientHeight = screen.height;
    srcImg.src = newpath;

    // 열려는 파일을 이름
    var srcFileName = srcImg.src.substr(srcImg.src.lastIndexOf("/") + 1, srcImg.src.length);

    // 새창 띄우고 이미지 삽입
    win = window.open("", "", "width=15,height=15,scrollbars=yes,resizable=yes,left=" + (clientWidth / 2 - 15) + ",top=" + (clientHeight / 2 - 15) + "");
    win.document.writeln("<" + "html" + ">");
    win.document.writeln("<head>");
    win.document.writeln("<title>" + document.title + " [" + srcFileName + "]</title>");
    win.document.writeln("</head>");
    win.document.writeln("<body style='margin:0px;' bgcolor='#333333'>");
    win.document.writeln("<table border='0' cellpadding='0' cellspacing='0' style='cursor:hand' onclick='self.close()'>");
    win.document.writeln(" <tr>");
    win.document.writeln("  <td align='center'><img src='" + newpath + "' name='winImg' style='cursor:hand' onclick='self.close()' alt='클릭하면 사라집니다'></td>");
    win.document.writeln(" </tr>");
    win.document.writeln("</table>");
    win.document.writeln("</body>");
    win.document.writeln("</html>");

    var timer = setTimeout(function () {
        srcImg = win.document.winImg;
    }, 500);

    srcImg.onload = function () {
        // 새창의 크기 설정
        var winWidth = srcImg.width + 35;
        var winHeight = srcImg.height + 29;

        // 새창이 띄워질 위치 설정
        var left = (clientWidth / 2) - (srcImg.width / 2);
        var top = (clientHeight / 2) - (srcImg.height / 2);

        // 이미지의 크기 overflow 확인후 새창의 크기와 위치 재설정
        if (clientWidth <= srcImg.width) {
            winWidth = clientWidth;
            left = 0;
        }
        if (clientHeight <= srcImg.height) {
            winHeight = clientHeight - 30;
            top = 0;
        } else {
            winHeight = winHeight + 56
        }

        win.document.body.scroll = "auto";
        // 이미지로딩이 끝났음으로 이미지의 크기를 사용할수 있다.
        // 해당 이미지의 사이즈에 맞게 윈도우를 재설정한다.
        win.moveTo(left, top);
        win.resizeTo(winWidth, winHeight);
    }
    // 이미지가 모두 로딩될때까지 기다림
    //    while (true) {
    //        if (srcImg.readyState == "complete") {
    //            break;
    //        }
    //    }

    //    // 새창의 크기 설정
    //    var winWidth = srcImg.width + 10;
    //    var winHeight = srcImg.height + 29;

    //    // 새창이 띄워질 위치 설정
    //    var left = (clientWidth / 2) - (srcImg.width / 2);
    //    var top = (clientHeight / 2) - (srcImg.height / 2);

    //    // 이미지의 크기 overflow 확인후 새창의 크기와 위치 재설정
    //    if (clientWidth <= srcImg.width) {
    //        winWidth = clientWidth;
    //        left = 0;
    //    }
    //    if (clientHeight <= srcImg.height) {
    //        winHeight = clientHeight - 30;
    //        top = 0;
    //    }
    //    else {
    //        winHeight = winHeight + 56
    //    }

    //    win.document.body.scroll = "auto";
    //    // 이미지로딩이 끝났음으로 이미지의 크기를 사용할수 있다.
    //    // 해당 이미지의 사이즈에 맞게 윈도우를 재설정한다.
    //    win.moveTo(left, top);
    //    win.resizeTo(winWidth, winHeight);
}


//**********************************************************************************************************************************
//* 사용자명 클릭시 레이어 띄우기
//**********************************************************************************************************************************
Common.show_info = function (id) {

    $("#tdInfo").unbind("click");
    $("#tdNote").unbind("click");

    $("#tdInfo")
        .bind("click", {userid: id}, function (e) {
            Common.openPop(400, 310, Common.format("/main/pop_user.aspx?userid={0}", e.data.userid), "no");
        })
        .mouseover(function () {
            $(this).css("background", "#cecece");
        })
        .mouseout(function () {
            $(this).css("background", "#ffffff");
        })
        .css("cursor", "pointer");

    $("#tdNote")
        .bind("click", {userid: id}, function (e) {
            Common.openPop(600, 421, Common.format("/note/pop_sendnote.aspx?userid={0}", e.data.userid), "no");
        })
        .mouseover(function () {
            $(this).css("background", "#cecece");
        })
        .mouseout(function () {
            $(this).css("background", "#ffffff");
        })
        .css("cursor", "pointer");

    Common.toggleInfoLayer();

}


Common.toggleInfoLayer = function () {

    if (event) {

        var obj = $("#divInfos");

        if (event.srcElement.id == "spLayer") {
            var x = event.x + 5;
            var y = document.documentElement.scrollTop + event.y - 10;

            obj.css({left: x, top: y});

            obj.show();
        } else {
            if (obj.css("display") == "block") {
                obj.hide();
            }
        }

    }

}


//**********************************************************************************************************************************
//* 로그인 메세지 띄우기
//**********************************************************************************************************************************
Common.log_msg = function () {

    alert("로그인 후 이용가능합니다.     ");



}


Common.leftmenu_event = function (object, imagename) {

    temp = object.id;

    eval("document.getElementById(temp)").src = Common.format("/images/leftmenu/{0}", imagename);

}


//**********************************************************************************************************************************
//* 쿠키 가져오기
//**********************************************************************************************************************************
Common.getCookie = function (name) {

    var from_idx = document.cookie.indexOf(name + '=');

    if (from_idx != -1) {
        from_idx += name.length + 1;
        to_idx = document.cookie.indexOf(';', from_idx);

        if (to_idx == -1) {
            to_idx = document.cookie.length;
        }

        return unescape(document.cookie.substring(from_idx, to_idx));
    }

}


//**********************************************************************************************************************************
//* 쿠키 설정하기
//**********************************************************************************************************************************
Common.setCookie = function (name, value) {

    document.cookie = name + "=" + escape(value) + "; path=/";

}

Common.setCookie = function (name, value, expiredays) {

    var expire_date = new Date();

    expire_date.setDate(expire_date.getDate() + expiredays);
    document.cookie = name + "=" + escape(value) + "; expires=" + expire_date.toGMTString() + "; path=/";

}

Common.setCookieForDomain = function (name, value, expiredays, domain) {

    var expire_date = new Date();

    expire_date.setDate(expire_date.getDate() + expiredays);
    document.cookie = name + "=" + escape(value) + "; expires=" + expire_date.toGMTString() + "; domain=" + domain + "; path=/";

}


//**********************************************************************************************************************************
//* 쿠키 삭제하기
//**********************************************************************************************************************************
Common.clearCookie = function (name) {

    var expire_date = new Date();

    expire_date.setDate(expire_date.getDate() - 1);
    document.cookie = name + "= " + "; expires=" + expire_date.toGMTString() + "; path=/";

}


//**********************************************************************************************************************************
//* 레이어쿠키 컨트롤
//**********************************************************************************************************************************
Common.layerControlCookie = function (elemnt, layername) {

    //if (elemnt.checked) {
    Common.setCookie(layername, true, 1)
    Common.layerPophide(layername);
    //}

}

Common.layerControlCookie = function (elemnt, layername, day) {

    //if (elemnt.checked) {
    Common.setCookie(layername, true, day)
    Common.layerPophide(layername);
    //}

}


//**********************************************************************************************************************************
//* 레이어팝업 보여주기
//**********************************************************************************************************************************
Common.layerPopShow = function (layername) {

    $("#" + layername).show();

}


//**********************************************************************************************************************************
//* 레이어팝업 감추기
//**********************************************************************************************************************************
Common.layerPophide = function (layername) {

    $("#" + layername).hide();

}


//**********************************************************************************************************************************
//* 해당 Url의 쿼리스트링 가져오기
//**********************************************************************************************************************************
Common.getQuerystring = function (name) {
    var rtnval = '';
    var nowAddress = unescape(location.href);
    var parameters = (nowAddress.slice(nowAddress.indexOf('?') + 1, nowAddress.length)).split('&');

    for (var i = 0; i < parameters.length; i++) {
        var varName = parameters[i].split('=')[0];
        if (varName.toUpperCase() == name.toUpperCase()) {
            rtnval = parameters[i].split('=')[1];
            break;
        }
    }
    return rtnval;
}


//**********************************************************************************************************************************
//* 브라우저 정보 가져오기
//**********************************************************************************************************************************
Common.getAppVersion = function () {

    var _agent = window.navigator.appVersion.toLowerCase();
    var rtnval = "";

    if (_agent.indexOf("iphone") > -1 || _agent.indexOf("ipod") > -1 || _agent.indexOf("ipad") > -1 || _agent.indexOf("mac os") > -1) {
        rtnval = "ios";
    } else if (_agent.indexOf("android") > -1) {
        rtnval = "android";
    } else {
        rtnval = "desktop";
    }

    return rtnval;

}

Common.isMobile = function () {

    var _version = Common.getAppVersion();

    if (_version == "ios" || _version == "android") {
        return true;
    } else {
        return false;
    }

}

Common.isChrome = function () {

    return window.chrome && !window.navigator.userAgent.match(/Opera|OPR\//);

}

Common.isEdge = function () {

    return window.navigator.appVersion.indexOf("Edge/") != -1 ? true : false;

}


//**********************************************************************************************************************************
//* 로그인 팝업 띄우기
//**********************************************************************************************************************************
Common.openPopLogin = function (openertype) {

    alert("로그인 후 서비스를 이용하실 수 있습니다.     ");

    var url = "";

    url = Common.format("/membership/login.aspx?returnurl={0}&o_returnurl={1}&openertype={2}",
        encodeURIComponent(location.href),
        (window.opener == "undefined" || window.opener == null) ? "" : encodeURIComponent(window.opener.location.href),
        (openertype == "undefined" || openertype == null) ? "page" : openertype);

    //Common.openPop(480, 360, url, "no", "win_login", "no");

    location.href = url;


}


//**********************************************************************************************************************************
//* 로그인 체크
//**********************************************************************************************************************************
Common.checkLogin = function (IsAuthenticated, openertype) {

    var rtnval = false;

    if (IsAuthenticated == "True") {
        rtnval = true;
    } else {
        alert("로그인 후 서비스를 이용하실 수 있습니다.     ");

        var url = "";

        /*
        url = Common.format("/membership/pop_login.aspx?returnurl={0}&o_returnurl={1}&openertype={2}",
        encodeURIComponent(location.href),
        (window.opener == "undefined" || window.opener == null) ? "" : encodeURIComponent(window.opener.location.href),
        (openertype == "undefined" || openertype == null) ? "page" : openertype);
        //var url = Common.format("/membership/pop_login.aspx?returnurl={0}&openertype={1}", encodeURIComponent(location.href.replace("http://", "")), (openertype == "undefined" || openertype == null) ? "page" : openertype);

        Common.openPop(480, 360, url, "no", "win_login", "no");
        */
        url = Common.format("/membership/login.aspx?returnurl={0}&o_returnurl={1}&openertype={2}",
            encodeURIComponent(location.href),
            (window.opener == "undefined" || window.opener == null) ? "" : encodeURIComponent(window.opener.location.href),
            (openertype == "undefined" || openertype == null) ? "page" : openertype);

        location.href = url;
    }


    return rtnval;

}


//**********************************************************************************************************************************
//* 권한 체크
//**********************************************************************************************************************************
Common.checkCert = function (membertype, curri) {

    var rtnval = false;

    if (unescape(location.href).indexOf("/exam/grade") > -1) {
        if (membertype == "B") {
            alert("해당 계정은 평가자료 서비스를 이용할 수 없습니다.     \n\n관리자에게 문의하세요.");
        } else if (membertype == "A" || (membertype == "S" && curri == "C1")) {
            rtnval = true;
        } else {
            alert("평가자료는 초등 정회원만 서비스를 이용하실 수 있습니다.     ");

            if (membertype == "G") {
                //Common.openPop(376, 505, "/main/pop_gpki.aspx", "win_gpki", "no");
                location.href = siteInfo.siteName_W + "/total_member/member/certificate.aspx";
            }
        }
    } else {
        if (membertype == "A" || membertype == "S" || membertype == "B") {
            rtnval = true;
        } else {
            alert("정회원만 서비스를 이용하실 수 있습니다.     ");

            if (membertype == "G") {
                //Common.openPop(376, 505, "/main/pop_gpki.aspx", "win_gpki", "no");
                location.href = siteInfo.siteName_W + "/total_member/member/certificate.aspx";
            }
        }
    }

    return rtnval;

}

//**********************************************************************************************************************************
//* 2020.05.18 이기광 추가
//* 권한 체크 (정회원 또는 교대생 회원인지 확인)
//**********************************************************************************************************************************
Common.checkCert2 = function (membertype, curri) {

    var rtnval = false;

    if (unescape(location.href).indexOf("/exam/grade") > -1) {
        if (membertype == "B") {
            alert("해당 계정은 평가자료 서비스를 이용할 수 없습니다.     \n\n관리자에게 문의하세요.");
        } else if (membertype == "A" || (membertype == "S" && curri == "C1")) {
            rtnval = true;
        } else {
            alert("평가자료는 초등 정회원만 서비스를 이용하실 수 있습니다.     ");

            if (membertype == "G") {
                //Common.openPop(376, 505, "/main/pop_gpki.aspx", "win_gpki", "no");
                location.href = siteInfo.siteName_W + "/total_member/member/certificate.aspx";
            }
        }
    } else {
        //교대생 허용 : "U"로 변경 필요
        if (membertype == "A" || membertype == "S" || membertype == "B" || membertype == "U") {
            rtnval = true;
        } else {
            alert("정회원만 서비스를 이용하실 수 있습니다.     ");

            if (membertype == "G") {
                //Common.openPop(376, 505, "/main/pop_gpki.aspx", "win_gpki", "no");
                location.href = siteInfo.siteName_W + "/total_member/member/certificate.aspx";
            }
        }
    }

    return rtnval;

}


//**********************************************************************************************************************************
//* 2020.08.04 채수현 추가
//* 배너 클릭 로그 남기기
//**********************************************************************************************************************************
Common.BannerLog = function (url) {
    $.ajax({
        type: "post",
        url: "/include/ashx/banner.ashx?type=BannerLog",
        data: ({
            "Url": url
        }),
        dataType: "json",
        success: function (data, status) {
            console.log(status);
        },
        error: function (xhr) {
            return -1;
        }
    });
}

//**********************************************************************************************************************************
//* jQuery Ajax 처리
//**********************************************************************************************************************************
Common.getAjax = function (url, params, type, callback, async, fn_beforesend, fn_complete) {

    $.ajax({
        type: "post",
        url: url,
        async: (typeof async === "undefined" || async == null) ? true : async,
        data: (params),
        dataType: type,
        beforeSend: function () {
            if (typeof fn_beforesend !== "undefined" || fn_beforesend != null) {
                fn_beforesend;
            }
        },
        success: function (data, status) {
            callback(data, params);
        },
        error: function (xhr) {
            alert("컨텐츠를 불러오는데 문제가 발생하였습니다.     \n\n페이지를 새로고침 해주세요.\n\n[오류] " + xhr.statusText + "     ");


        },
        complete: function () {
            if (typeof fn_complete !== "undefined" || fn_complete != null) {
                fn_complete;
            }
        }
    });



}


Common.getAjaxPage = function (url, params, type, callback) {

    $.ajax({
        type: "post",
        url: url,
        data: params,
        contentType: "application/json; charset=utf-8",
        dataType: type,
        success: function (data) {
            callback(data, params);
        },
        error: function (xhr) {
            alert("컨텐츠를 불러오는데 문제가 발생하였습니다.     \n\n페이지를 새로고침 해주세요.\n\n[오류] " + xhr.statusText + "     ");


        }
    });



}


//**********************************************************************************************************************************
//* 이하 그루버 함수들
//**********************************************************************************************************************************

var d = document;

function _id(element) {
    return d.getElementById(element);
}

function _tag(element, passTag) {
    if (arguments.length == 1) {
        return d.getElementsByTagName(arguments[0]);
    } else {
        if (typeof element == "string") {
            return _id(element).getElementsByTagName(passTag);
        } else {
            return element.getElementsByTagName(passTag);
        }
    }
}

function _css(element, prop) {
    var el, read_css;
    el = element;
    if (!d.defaultView) {
        read_css = el.currentStyle[prop];
    } else {
        read_css = d.defaultView.getComputedStyle(el, null).getPropertyValue(prop);
    }
    return read_css;
}

//tr 짝수들만 class="on" 줘서 백그라운드 치기 (클래스는 css에 만들어놔야 합니다.)
function tableRowBg(el) {
    var thisTable = _id(el);
    var tr = thisTable.getElementsByTagName("tr");
    if (tr.length == 1 || tr.length == 2) {
        return false;
    } else {
        for (var i = 1; i < tr.length; i++) {
            if (i % 2 == 1) {

            } else {
                tr[i].className = "on";
            }
        }
    }
}

//li 짝수들만 class="on" 줘서 백그라운드 치기 (클래스는 css에 만들어놔야 합니다.)
function lineDouble_on(el) {
    var wrap = _id("event_lists");
    var lists = _tag(wrap, "li");
    if (lists.length == 0) {
        return false;
    }
    for (var i = 0; i < lists.length; i++) {
        if (i % 2 == 0) {

        } else {
            if (lists[i].className != "nodata") {
                lists[i].className = "on";
            }
        }
    }
}


//**********************************************************************************************************************************
//* 이미지 확대 레이어 팝업
//**********************************************************************************************************************************
Common.viewImage = function (url, obj) {
    $("div.viewImage").hide().remove();

    var HtmlTemplate = "";
    HtmlTemplate += "<div class='viewImage' style='position:absolute; top:{1}px; left:{2}px; z-index:1;' >\n ";
    HtmlTemplate += "   <a href=\"#\" onclick=\"$(this).parent().hide().remove(); return false;\">\n ";
    HtmlTemplate += "       <img src='{0}' style='border:1px black solid;' />\n ";
    HtmlTemplate += "   </a>\n ";
    HtmlTemplate += "</div>";

    $('body').append(Common.format(HtmlTemplate, url, $(obj).find('img').offset().top, $(obj).find('img').offset().left));
}

//레이어 팝업 띄우기
Common.LayerOpenPopup = function (url, options) {
    var backgroundSelector = $('<div id="modal" ></div>');
    backgroundSelector.appendTo('body');

    backgroundSelector.css({
        'width': $(document).width(),
        'height': $(document).height(),
        'display': 'none',
        'background-color': '#000',
        'filter': 'alpha(opacity=50)',
        'position': 'absolute',
        'top': 0,
        'left': 0,
        'z-index': 99998
    });

    backgroundSelector.fadeTo('fast', 0.8);
    backgroundSelector.click(function () {
        //HideModalPopup(modalPopupID)
    });

    var $dialog = $("<div>", {"id": "dialog"});
    var $iframe = $("<iframe>", {"id": "popup", "width": "100%", "height": "100%", "scrolling": "yes", "frameborder": "0"});

    var defaults = {
        //title: "",
        autoOpen: true,
        height: 480,
        width: 640,
        modal: true,
        resizable: false,
        draggable: true,
        closeOnEscape: false,
        //buttons: {
        //    //"닫기": function () {
        //    //    $(this).dialog("close");
        //    //    //$(this).remove();
        //    //}
        //},
        close: function () {
            $(this).remove();
            $("#modal").remove();

        },
        open: function (ev, ui) {
            $("#dialog > #popup").attr("src", url);
            $("#dialog").parent().css("z-index", "999999999999");
            $("#dialog").css("padding", "0");
            $("#dialog").css("overflow", "hidden");
        },

        initFuncName: "",
        initFuncArgs: null,
        rtnFunc: function () {}
    };

    var settings = $.extend({}, defaults, options);
    //Jquery UI Dialog 버튼은 사용안함, 각 팝업화면의 버튼을 사용.
    settings.buttons = {};

    $iframe.load(function () {

        //팝업 오픈시 실행할 함수..
        if (typeof settings.initFuncName == "string" && settings.initFuncName.length > 0) {
            $iframe[0].contentWindow[settings.initFuncName](settings.initFuncArgs);
        }

        $iframe[0].contentWindow._Dialog = $dialog;
        $iframe[0].contentWindow._Settings = settings;
        //console.log("iframe-load-dialog=", $dialog);
        //console.log("iframe-load-settings=", settings);

        if ($iframe[0].contentWindow.isClose) {
            settings.rtnFunc.apply(this, window.closeArguments);
            $dialog.dialog("close");
        }
    });

    $iframe.appendTo($dialog);
    $dialog.appendTo("body");

    $dialog.dialog(settings);
}

//레이어 팝업 닫기
Common.LayerClosePopUp = function () {

    var isDialog = (window._Dialog == null || window._Dialog == undefined);
    if (isDialog == false) {
        var dialog = window._Dialog;
        var settings = window._Settings;

        settings.rtnFunc.apply(this, Common.LayerClosePopUp.arguments);

        dialog.dialog("close");
        $("#modal").remove();
        //dialog.remove();
    } else {
        window.isClose = true;
        window.closeArguments = Common.LayerClosePopUp.arguments;
        $("#modal").remove();
    }
}

Common.AddFavorite = function (pUrl, pTit) {
    //------------------------------------------------------------------------------
    // 즐겨찾기
    //------------------------------------------------------------------------------

    if (pUrl != "") {
        window.external.AddFavorite(pUrl, pTit);
    }

}


Common.layCallBackFunc = null;
Common.lay = null;
Common.layPop = function (url, w, h, calBackFunc) {
    this.layCallBackFunc = calBackFunc;

    var layout = $("<div>", {"id": "dialog", "style": "padding:0px"});
    var layIframe = $("<iframe>", {"id": "laypop", "src": url, "width": "100%", "height": "100%", "scrolling": "no", "frameBorder": "0"});

    if (w == undefined || w == null) {
        w = 640;
    }

    if (h == undefined || h == null) {
        h = 480;
    }

    var top = h / 2;
    var left = w / 2;

    layIframe.appendTo(layout)

    Common.lay = layout.dialog({
        create: function (event, ui) {
            var dg = $(event.target).parent();

            dg.find(".ui-dialog-titlebar").hide();
            dg.css('position', 'fixed');
            dg.css("z-index", "1100");
            dg.css("padding", "0px");
            dg.css("border-radius", "0px");
            dg.css("border", "0px");
        },
        open: function (event, ui) {
            //$("#dialog > #laypop").attr("src", url);

            $(".ui-widget-overlay").css("opacity", "0.6");
            $(".ui-widget-overlay").css("background-color", "#000000");
            $(".ui-widget-overlay").css("background-image", "none");
            $('body').css('overflow', 'hidden');
        },
        close: function (event, ui) {
            Common.layCallBackFunc = null;
            $('body').css('overflow', 'auto');
        },
        autoOpen: true,
        modal: true,
        resizable: false,
        draggable: false,
        width: w,
        height: h
    });
}

Common.layClose = function () {
    if (parent) {

        if (typeof parent.Common.layCallBackFunc == "function" && this.layClose.arguments.length > 0) {
            parent.Common.layCallBackFunc.apply(this, this.layClose.arguments);
        }
        parent.Common.lay.dialog("close");
    } else {
        Common.lay.dialog("close");
    }
}

Common.ajaxCall = function (url, data, callback, asyncMode, timeout, customLoadingImgHandler) {

    if (asyncMode == undefined) asyncMode = true;

    if (timeout == undefined) timeout = 120 * 1000;

    if (customLoadingImgHandler == undefined) {
        customLoadingImgHandler = {};
        customLoadingImgHandler.beforeSend = function () {};
        customLoadingImgHandler.success = function () {};
        customLoadingImgHandler.error = function () {};
        customLoadingImgHandler.complete = function () {};
    }

    var sendData = data;    //JSON.stringify(data);
    console.log("\n\nService[" + url + "] request data :\n", data);

    var options = {
        url: url, // 요청URL
        type: 'post',
        dataType: "json",
        //contentType: "application/json",
        data: sendData,
        async: asyncMode,
        timeout: timeout,
        beforeSend: function (xhr, settings) {
            customLoadingImgHandler.beforeSend();
        },

        success: function (responseData, statusText, xhr) {
            console.log("\n\nService[" + url + "] response data :\n", responseData);

            customLoadingImgHandler.complete();

            if (!responseData) {
                return;
            }

            var resObject;
            try {
                if (typeof (responseData) != 'object') {
                    resObject = eval("(" + responseData + ")");
                } else {
                    resObject = responseData;
                }
            } catch (e) {
                alert("시스템 오류 입니다." + e);
                return false;
            }

            callback(resObject, statusText);
        },

        error: function (xhr, statusText, errorThrown) {
            customLoadingImgHandler.error();
            try {
                if (xhr != null && xhr.status == 401) {
                    alert("로그인 정보가 없습니다.\n로그인페이지로 이동합니다.");
                    //location.href("/Account/UserLogin");
                    return;
                }

                $("#errMstLayer").empty().append("시스템 장애가 발생하였습니다.<br>고객센터로 문의해 주시기 바랍니다.<br>[" + xhr.status + "] " + xhr.statusText);
                $("#errDialog").dialog({
                    modal: true,
                    title: "안내",
                    buttons: {
                        Ok: function () {
                            $(this).dialog("close");
                            $("#errMstLayer").empty();
                        }
                    },
                    zIndex: 200001
                });

            } catch (e) {
                alert("시스템 장애가 발생하였습니다.\r\n고객센터로 문의해 주시기 바랍니다");
            }
        },

        complete: function (xhr, statusText) {
            customLoadingImgHandler.success();
            if (xhr.status == 302) {
                window.location.href = xhr.getResponseHeader("Location");
            }
        }
    };
    $.ajax(options);
};

/*************************************************
 HTML JS 페이징
 1페이지 : 0으로 하지 않음 Index 아님
 ***************************************************/
Common.createPaging = function (totalcnt, thisPage, functionName, listCount, pageCount) {

    thisPage = parseInt(thisPage);

    if (totalcnt == 0) {
        //return "데이터가 존재하지 않습니다.";
    }
    var LISTUNIT = 10;   //페이지당 레코드수
    var PAGEUNIT = 10;  //페이징 갯수

    if (listCount != undefined) {
        LISTUNIT = listCount;
    }

    if (pageCount != undefined) {
        PAGEUNIT = pageCount;
    }

    if (LISTUNIT <= 0) {
        return "";
    }

    var totpages = Math.ceil(parseInt(totalcnt) / LISTUNIT); //총페이지수
    var thisblock = Math.ceil(parseInt(thisPage) / PAGEUNIT); //현재 페이징블럭
    var totalBlock = Math.ceil(totpages / PAGEUNIT);
    var startpage, endpage;
    var retHtml = "";

    // 현재 페이지블럭의 시작페이지번호
    if (thisblock > 1) {
        startpage = (thisblock - 1) * PAGEUNIT + 1;
    } else {
        startpage = 1;
    }

    // 현재 페이지블럭의 끝페이지번호
    if ((thisblock * PAGEUNIT) >= totpages) {
        endpage = totpages;
    } else {
        endpage = thisblock * PAGEUNIT;
    }

    // 처음
    retHtml += "<span>";
    if (thisPage > 1) {
        retHtml += "<a href='javascript:void(0);' onclick='" + functionName + "(\"1\");' title='처음으로'><img src='http://image.tsherpa.co.kr/common/btn/btn_paging_first.gif' alt='처음으로' /></a>\n";
    } else {
        retHtml += "<a href='javascript:void(0);' title='처음으로' style='cursor:default;'><img src='http://image.tsherpa.co.kr/common/btn/btn_paging_first.gif' alt='처음으로' /></a>\n";
    }

    // 이전 10 page
    if (thisPage > PAGEUNIT) {
        var nPrevPage = (thisblock - 1) * PAGEUNIT;
        retHtml += "<a href='javascript:void(0);' onclick='" + functionName + "(\"" + nPrevPage + "\");' title='이전" + PAGEUNIT + "개 페이지'><img src='http://image.tsherpa.co.kr/common/btn/btn_paging_prev.gif' alt='이전" + PAGEUNIT + "개 페이지' /></a>\n";
    } else {
        retHtml += "<a href='javascript:void(0);' title='이전" + PAGEUNIT + "개 페이지' style='cursor:default;'><img src='http://image.tsherpa.co.kr/common/btn/btn_paging_prev.gif' alt='이전" + PAGEUNIT + "개 페이지' /></a>\n";
    }
    retHtml += "</span>";

    if (startpage == 1 && endpage == 0) {
        retHtml += "    <strong>" + thisPage + "</strong>\n";
    } else {
        for (var i = startpage; i <= endpage; i++) {
            if (i != thisPage) {
                retHtml += "    <a href='javascript:void(0);' onclick='" + functionName + "(\"" + i + "\");'>" + i + "</a>\n";
            } else {
                retHtml += "    <strong>" + i + "</strong>\n";
            }
        }
    }

    retHtml += "<span>";

    // 다음 10 page
    if (thisblock < totalBlock) {
        var nNextPage = thisblock * PAGEUNIT + 1;
        retHtml += "<a href='javascript:void(0);' onclick='" + functionName + "(\"" + nNextPage + "\");' title='다음" + PAGEUNIT + "개 페이지'> <img src='http://image.tsherpa.co.kr/common/btn/btn_paging_next.gif' alt='다음" + PAGEUNIT + "개 페이지' /></a>\n";
    } else {
        retHtml += "<a href='javascript:void(0);' title='다음" + PAGEUNIT + "개 페이지' style='cursor:default;'> <img src='http://image.tsherpa.co.kr/common/btn/btn_paging_next.gif' alt='다음" + PAGEUNIT + "개 페이지' /></a>\n";
    }

    // 마지막 페이지
    if (thisPage != totpages) {
        retHtml += "<a href='javascript:void(0);' onclick='" + functionName + "(\"" + totpages + "\");' title='마지막으로'> <img src='http://image.tsherpa.co.kr/common/btn/btn_paging_last.gif' alt='마지막으로' />" +
            "</a>\n";
    } else {
        retHtml += "<a href='javascript:void(0);' title='마지막으로' style='cursor:default;'> <img src='http://image.tsherpa.co.kr/common/btn/btn_paging_last.gif' alt='마지막으로' /></a>\n";
    }
    retHtml += "</span>";

    return retHtml;
};