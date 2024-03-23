<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>T셀파 문제은행</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resource/popup/css/font.css">
	<link rel="stylesheet" href="/resource/popup/css/reset.css">
	<link rel="stylesheet" href="/resource/popup/css/common.css">
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"
		integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	<script src="/resource/midhigh/js/common.js"></script>
</head>

<body>
	<div id="wrap" class="full-pop-que">
		<div class="full-pop-wrap">
			<div class="pop-header">
			</div>
			<div class="pop-content">
				<div class="error-cnt">
					<img src="/resource/popup/img/error.png" alt="에러">
					<div class="txt-box">
						<input type="hidden" value="${errorResponse}"/>
						<span class="tit">요청하신 페이지를 찾을 수 없습니다.</span>
						<span class="txt">요청하신 페이지를 처리하는 도중 예기치 못한 에러가 발생했습니다. <br>잠시 후 다시 시도해주세요.</span>
						<br>
						<div class="btn-wrap" >
							<button class="btn-default" id="btn-back" onclick="history.back()">뒤로가기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="dim"></div>

</body>
<script>

</script>
</html>