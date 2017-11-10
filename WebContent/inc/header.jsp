
<style>
	#toast-container.toast-top-full-width > div, #toast-container.toast-bottom-full-width > div {
		width: 30%!important;
		text-align: center;
		top: 15px;
	}
	#toast-container > .toast-success{
		background-image :none!important;

	}
	.toast-success {
	    background-color: #191a1b;
	}
	.toast-title {
    	font-weight: bold;
    	font-size: 18px;
	}
	.toast-message {
    	font-size: 16px;
	}


	.mCSB_inside>.mCSB_container {
    	margin-right: 15px!important;
	}
	.login-img-validator{
		cursor: pointer;
	}
	a.top_btn1,a.top_btn3{
		color:#fff;
	}

</style>



<!-- top버튼 -->
<a href="#myAnchor" class="go-top">▲</a>
<script>
/*Add class when scroll down*/
var lgMsg = '<div class="bg_mask_pop_title">'
	lgMsg += '	<span class="popup_logo"><img src="/images/popup_logo.png"></span>';
	lgMsg += '	<span class="popup_close closeloginModalBtn"><img src="/images/popup_close.png" class="closeloginModalBtn"></span>';
	lgMsg += '</div>';
	lgMsg += '<div class="bg_mask_pop2_in">';
	lgMsg += '	<div class="pop_icon_center">';
	lgMsg += '		<img src="/images/check_icon.png">';
	lgMsg += '	</div>';
	lgMsg += '	<div class="pop_text">';
	lgMsg += '		로그인 성공!<br>';
	lgMsg += '		IBET25에 오신것을 환영합니다. <br>';
	lgMsg += '		IBET25에서 다양한 베팅의 세계를 마음껏 경험하세요!<br>';
	lgMsg += '	</div>';
	lgMsg += '	<div class="btn_wrap">';
	lgMsg += '		<a href="/"><span class="btn3">확인</span></a>';
	lgMsg += '	</div>';
	lgMsg += '</div>';

var lgSpin = '<div id="spin_clive" class="sk-circle ng-scope" style="">';
	lgSpin += '<div class="sk-circle1 sk-child"></div>';
	lgSpin += '<div class="sk-circle2 sk-child"></div>';
	lgSpin += '<div class="sk-circle3 sk-child"></div>';
	lgSpin += '<div class="sk-circle4 sk-child"></div>';
	lgSpin += '<div class="sk-circle5 sk-child"></div>';
	lgSpin += '<div class="sk-circle6 sk-child"></div>';
	lgSpin += '<div class="sk-circle7 sk-child"></div>';
	lgSpin += '<div class="sk-circle8 sk-child"></div>';
	lgSpin += '<div class="sk-circle9 sk-child"></div>';
	lgSpin += '<div class="sk-circle10 sk-child"></div>';
	lgSpin += '<div class="sk-circle11 sk-child"></div>';
	lgSpin += '<div class="sk-circle12 sk-child"></div>';
	lgSpin += '</div>';

$(window).scroll(function(event){
  	var scroll = $(window).scrollTop();
	    if (scroll >= 50) {
	        $(".go-top").addClass("show");
	    } else {
	        $(".go-top").removeClass("show");
	    }
	});
	/*Animation anchor*/
	$('a').click(function(){
	    $('html, body').animate({
	        scrollTop: $( $(this).attr('href') ).offset().top
	    }, 1000);
	});

	$(document).ready(function(){
		
		$('#loginModal').popup({
	      	transition: 'all 0.3s',
	      	scrolllock: true,
	      	onclose:function(){
	    		$("#login_header")[0].reset();
	    		$('.input_warning').hide();
	    		// location.reload();
	    		$("#passwd-header-input").removeClass("password");
	    	}
	    });

	    $('#logoutModal').popup({
	      	transition: 'all 0.3s',
	      	scrolllock: true,
	    });	

		$("#login_header").on("submit", function(e){
			e.preventDefault();

			toastr.clear();
			
			var validator = $( "#login_header" ).validate(); 
			var vUser = validator.element("#userid-header-input");
			var vPass = validator.element("#passwd-header-input");
			console.log(!vUser);
			console.log(!vPass);
			if(!vUser && !vPass){
				toastr.success("Please complete the form");
			}else if (vUser && !vPass){
				toastr.success("Password is required");
			}else if (!vUser && vPass){
				toastr.success("Userid is required");
			}else{

				var data = $("#login_header").serializeJSON();
			    submitLoginHeader(data);
			}


	
		});


		$(".closeLogoutBtn").on("click",function(e){
			e.preventDefault();
			$("#logoutModal").popup("hide");
		});

		$("#showLogoutModal").on("click",function(e){
			$("#logoutModal").popup("show");
		});

		$("body").on("click",".closeloginModalBtn",function(e){
			e.preventDefault();
			$("#loginModal").popup("hide");
			location.reload();
		});

		$("#passwd-header-input").on("focus",function(){
			$(this).addClass("password");
		});

		$("#passwd-header-input").on("blur",function(){
			if($(this).val() == ""){
				$(this).removeClass("password");	
			}
		});


		toastr.options = {
			closeButton: true,
			debug: false,
			newestOnTop: false,
			progressBar: false,
			positionClass: "toast-top-full-width",
			preventDuplicates: true,
			onclick: null,
			showDuration: "3000",
			hideDuration: "1000",
			timeOut: "5000",
			extendedTimeOut: "1000",
			showEasing: "swing",
			hideEasing: "linear",
			showMethod: "fadeIn",
			hideMethod: "fadeOut",
			onHidden: function() {
				
				$('#userid-header-input').css("border-color","#505455");
				$('#passwd-header-input').css("border-color","#505455");

			}
		}

		$(".login-img-validator").on("click",function(){
			var tab = $(this).attr('data-tab');
			$("#ftb input[name=pge]").val("acc");
			$("#ftb input[name=tb]").val(tab);
			$("#ftb").submit();
		});

		$("#user_menu_lst li a").on("click",function(e){
			e.preventDefault();
			var tab = $(this).attr('data-tab');
			var pg = $(this).attr('data-pg');
			$("#ftb input[name=pge]").val(pg);
			$("#ftb input[name=tb]").val(tab);
			$("#ftb").submit();

		});

		$("#user_popup_menu div a").on("click",function(e){
			e.preventDefault();
			var tab = $(this).attr('data-tab');
			var pg = $(this).attr('data-pg');
			$("#ftb input[name=pge]").val(pg);
			$("#ftb input[name=tb]").val(tab);
			$("#ftb").submit();

		});

		$("#login_header").validate({
	  		errorClass: 'form1-invalid',
	    	validClass: 'header-login-valid',
		    onfocusout: false,
		    onkeyup :false,
		    onclick : false,
		    groups: {
			    username: "userid passwd"
			},
	  		rules: {
			    userid :{
			    	required:true,
	      		},
				
				passwd :{
					required:true,
				},
			},
			messages: {
			    userid :{
					required:"User Id is required",
					remote:"이미 사용중인 아이디 입니다.",
				},
				passwd :{
					required:"Password is required",
					minlength:"비밀번호를 6자리 이상 입력 해 주세요.",
					maxlength:"비밀번호를 20자리 이하로 입력 해 주세요",
				},

			},
			errorPlacement: function(error, element) {
				
			}
		  	
		});

	});

	function submitLoginHeader(data){
		$("#loginModal").html(lgSpin);
		$("#loginModal").popup("show");

		$.ajax({
			url : '../login/jsp/login_process.jsp',
			data : data,
			method: 'POST',
		}).done(function(data){
			var obj = JSON.parse(data);
			if(obj.result == 0 ){

				// toastr.success('Login Successful');
				$("#loginModal").html(lgMsg);

			}else if(obj.result == 1 ){
				
				setTimeout(function(){
					toastr.success('Incorrect Password');
					$("#passwd-header-input").focus();

					$("#loginModal").popup("hide");
				}, 2000);

			}else if(obj.result == 2){

				setTimeout(function(){
					toastr.success('Unknown User Id');
					$("#userid-header-input").focus();

					$("#loginModal").popup("hide");
				}, 2000);

			}else{

				toastr.success('Something went wrong. Try again.');
				$("#loginModal").popup("hide");
			}
		});

	}

</script>

<div id="wrap">
<div id="header_wrap">
	<div class="nav">
		<div class="util_wrap"></div>
        <ul class="util_left">
            <li><span class="util_time">00:00:00</span></li>
            <li>
                <select id="language" name="language">
                  <option value="0">한국어</option>
                  <option value="1">영어</option>
                  <option value="2">중국어</option>
                  <option value="3">일본어</option>
                </select> 
                <script type="text/javascript">
                    $(function(){
                        $('#language').selectlist({
                            zIndex: 10,
                            width: 95,
                            height: 34
                        });		
                    })
                </script>
            </li>
            <li><a href="/notice/sub02.jsp"><span class="util_btn">공지/이벤트</span></a></li>
            <li><a href="/help/sub03.jsp"><span class="util_btn">도움말</span></a></li>
            <li><a href="/match/result.jsp"><span class="util_btn">경기결과</span></a></li>
        </ul>
       	<% 
        	if(checkSession){
       	%>
		<ul class="util_right">
        <li class = 'hdr-money-row'>머니 <span class="util_money money_dsp"><%=dfrmt.format(UBAL)%></span></li>
        <li>포인트 <span class="util_point point_dsp"><%=dfrmt.format(UPOINT)%></span></li>
            <li>
				<span class="popover-wrapper right">
					<a href="#" data-role="popover" data-target="example-popover-2"><img src="/images/select_mark.png"></a>
					<div class="popover-modal example-popover-2">
						<div class="popover-body" >
							<a href="#" data-toggle-role="close" style="position:absolute; right:20px; top:0px">×</a>
							<div class="popover-body-in">
								<span class="popover_t">보유머니</span> <span class="popover_money"><%=UBAL%></span>
							</div>
							<div class="popover-body-in">
								<span class="popover_t">보유포인트</span> <span class="popover_money"><%=UPOINT%></span>
							</div>
							<div class="popover-body-btn" id="user_popup_menu">
								<div class="popover-body-btn_in">
									<a href="/cash/cash.jsp" data-pg="sb4" data-tab="tab1" ><span class="popover_btn">충전신청</span></a> 
									<a href="/cash/cash.jsp"  data-pg="sb4" data-tab="tab2" ><span class="popover_btn">환전신청</span></a>
								</div>
								<div class="popover-body-btn_in">
									<a href="/cash/cash.jsp" data-pg="sb4" data-tab="tab3" ><span class="popover_btn">포인트전환</span></a> 
									<a href="/cash/cash.jsp" data-pg="sb4" data-tab="tab3"><span class="popover_btn">포인트사용내역</span></a>
								</div>
								<div class="popover-body-btn_in">
									<a href="/cash/cash.jsp" data-pg="sb4" data-tab="tab4" ><span class="popover_btn">머니전환</span></a> 
									<a href="/cash/cash.jsp" data-pg="sb4" data-tab="tab6"><span class="popover_btn">머니사용내역</span></a>
								</div>
							</div>
						</div>
						<script>
							$('[data-role="popover"]').popover();
							$('[data-role="popover2"]').popover({trigger: 'hover'});
						</script>
					</div>
				</span>
			</li>
		</ul>
		<% } %>
		<div class="top_wrap">
            <div class="top">
                <span class="logo"><a href="/"><img src="/images/logo.png"></a></span>
             		<% 
               			if(checkSession){
      				%>
	                <ul class="top_right" id="user_menu_lst">
	                    <li>
							<div class="select open">
								<button type="button" class="myValue top_value">LV.<%=UCLEVEL%>   <%=NICK%></button>
								<ul class="aList top_alist">
									<li style="height:11px; width:152px; background:url(/images/select_top_bg.png) no-repeat"></li>
									<li>
										<a href="/info/info.jsp" data-pg="sb5" data-tab="tab1" >내 정보 </a>
									</li>
									<li>
										<a href="/info/info.jsp" data-pg="sb5" data-tab="tab2" >베팅내역 </a>
									</li>
									<li>
										<a href="/info/info.jsp" data-pg="sb5" data-tab="tab3" >1:1문의 </a>
									</li>
									<li>
										<a href="/info/info.jsp" data-pg="sb5" data-tab="tab4" >쪽지함 </a>
									</li>
									
									<li><span id="showLogoutModal" >로그아웃 </span> </li> 
								</ul>
							</div>				
						</li>
						<li><a href="/cash/cash.jsp" data-pg="sb4" data-tab="tab1" class="top_btn1" >  충전신청  </a></li>
	                    <li><a href="/cash/cash.jsp" data-pg="sb4" data-tab="tab2" class="top_btn1" > 환전신청  </a></li>
						<li><a href="/cash/cash.jsp" data-pg="sb4" data-tab="tab4" class="top_btn3" > 머니전환  </a></li>
						<li><a href="/info/info.jsp" data-pg="sb5" data-tab="tab1" ><span class="top_btn2">내정보</span></a></li>
	                </ul>
               	<% } else{  %>
					<ul class="top_right">
						<form id="login_header">
							<li><input id="userid-header-input" type="text" class="input_style01" name="userid" placeholder="ID"><img class="login-img-validator" data-tab="tab1" id="userid-img" src="../images/input_mark.png"></li>
							<!-- input_blue 인풋활성화 -->
		                    <li>
		                    	<input id="passwd-header-input" type="password" class="input_style01" name="passwd" placeholder="PW" style="width: 158px;"><img class="login-img-validator" data-tab="tab2" id="passwd-img" src="../images/input_mark.png">
		                    </li>
		                     <li><div class="input_warning login-warn" id="login-header-warn" >조건에 맞는 아이디를 입력해주세요.</div></li>
		                    <!-- input_red 인풋조건미충족 -->
		                    <li>
		                    	<input type="submit" class="top_btn1" id="lginHderBtn" value="로그인" >
		                    </li>
		                    <li><span class="top_btn2 fade_1_open" >회원가입</span></li>

	                    </form>

	                    <div class="error" style="position: inherit;margin-top: 29px;">
	                    	<!-- <div class="input_warning login-warn" id="login-header-warn" >조건에 맞는 아이디를 입력해주세요.</div> -->
	                    </div>
					</ul>

               	<% }%>

            </div>
        </div>
        <div class="nav_wrap">
			<div class="stroke">
				<ul>
					<li><a href="/sport/livematch.jsp">실시간</a></li>
					<li><a href="/sport/prematch.jsp">스포츠</a></li>
					<li><a href="/virtual/vgaming.jsp">가상게임</a></li>
					<li><a href="/casino/casino.jsp">카지노</a></li>
					<li><a href="#">경마</a></li>
				</ul>
			</div>
        </div>
	</div>
</div><!-- header_wrap -->


<div class="hidden" id="tb_redirect">
	<form action="/tab_route.jsp" method="post" accept-charset="utf-8" id="ftb">
		<input type="hidden" name="tb" value="">
		<input type="hidde" name="pge" value="">
	</form>	
</div>
<!-- login success modal -->
<div id="loginModal" class="bg_mask_pop2">
	<div class="bg_mask_pop_title">
		<span class="popup_logo"><img src="/images/popup_logo.png"></span>
		<span class="popup_close closeloginModalBtn"><img src="/images/popup_close.png"></span>
	</div>
	<div class="bg_mask_pop2_in">
		<div class="pop_icon_center">
			<img src="/images/check_icon.png">
		</div>
		<div class="pop_text">
			로그인 성공!<br>
			IBET25에 오신것을 환영합니다. <br>
			IBET25에서 다양한 베팅의 세계를 마음껏 경험하세요!<br>
		</div>
		<div class="btn_wrap">
			<a href="/"><span class="btn3">확인</span></a>
		</div>
	</div>
</div>

<!-- logout modal -->
<div id="logoutModal" class="bg_mask_pop2">
	<div class="bg_mask_pop_title">
		<span class="popup_logo"><img src="/images/popup_logo.png"></span>
		<span class="popup_close closeLogoutBtn"><img src="/images/popup_close.png"></span>
	</div>
	<div class="bg_mask_pop2_in">
		<div class="pop_icon_center">
			<img src="/images/exclamation_icon.png">
		</div>
		<div class="pop_text">
			로그인 성공!<br>
			IBET25에 오신것을 환영합니다. <br>
			IBET25에서 다양한 베팅의 세계를 마음껏 경험하세요!<br>
		</div>
		<div class="btn_wrap">
			<a href="" class="closeLogoutBtn"><span class="btn3">취소</span></a>
			<a href="../login/jsp/logout_process.jsp"><span class="btn3">확인</span></a>
		</div>
	</div>
</div>


<!-- jsp include -->
<jsp:include page="/login/login.jsp" />
<jsp:include page="/login/register.jsp" />
<jsp:include page="/casino/game-pop.jsp" />
